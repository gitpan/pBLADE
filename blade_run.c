#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include <blade.h>

/* We do a bit of work to make sure more than
 * one callback can be registered at a time,
 * although it's probably time wasted.
 */

typedef struct {
  SV *code;
  blade_env *blade;
} CallbackStruct;

static CallbackStruct *structs = 0;
static long n_structs = 0;
static long n_structs_used = 0;
#define STRUCTS_ALLOCATE_AT_A_TIME 128

static void allocate_more_structs() {

  structs = realloc(structs,
		(n_structs + STRUCTS_ALLOCATE_AT_A_TIME) *
		sizeof(CallbackStruct)
		);
  if (!structs)
    croak("allocate_more_structs() - out of memory");

  memset(structs + n_structs, 0,
	 STRUCTS_ALLOCATE_AT_A_TIME * sizeof(CallbackStruct)
	 );

  n_structs += STRUCTS_ALLOCATE_AT_A_TIME;

}

/*
 * Given a blade_env*, find the index of the callback data for that pointer.
 * Returns -1 if no callback matched.
 */
static long find_callback(blade_env *blade) {

  long index;

  for (index=0; index<n_structs_used; index++) {
    if (structs[index].blade == blade)
      return index;
  }

  return -1;
}
  
void unregister_blade_run_callback(blade_env *blade) {
  long index = find_callback(blade);

  if (index != -1) {
    SvREFCNT_dec(structs[index].code);
    structs[index].code = NULL;
    structs[index].blade = NULL;
    n_structs_used--;
  }
}

void register_blade_run_callback(blade_env *blade, SV* code) {

  long i;
  long index = find_callback(blade);

  /* already registered a callback for this blade_env */
  if (index != -1) {
    SvREFCNT_dec(structs[index].code);
    structs[index].code = code;
  }
  else {

    /* Allocate more structures if necessary, otherwise
     * find the first non-used structure entry
     */
    if (n_structs_used == n_structs) {
      index = n_structs;
      allocate_more_structs();
    }
    else {
      for (i=0; i<n_structs_used; i++) {
	if (structs[i].blade == NULL) {
	  index = i;
	  break;
	}
      }
      if (index >= n_structs_used)
	croak("this shouldn't happen, bug in register_blade_run_callback()");
    }

    structs[index].code = code;
    structs[index].blade = blade;

    n_structs_used++;
  }

  SvREFCNT_inc(code);
}

void blade_run_wrapper(blade_env *blade) {

  long index;
  SV *tmp_sv;

  dSP;
  ENTER;
  SAVETMPS;
  PUSHMARK(sp);

  index = find_callback(blade);

  if (index == -1)
    croak("blade_run_wrapper() - this did not happen");

  tmp_sv = sv_newmortal();
  sv_setref_pv(tmp_sv,"blade_envPtr",blade);
  XPUSHs(tmp_sv);
  PUTBACK;

  perl_call_sv(structs[index].code, G_DISCARD);

  SPAGAIN;
  PUTBACK;
  FREETMPS;
  LEAVE;
}
