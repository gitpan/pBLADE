#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include <blade.h>
#include "util.h"
#include "blade_run.h"
#include "blade_obj_simple_init.h"
#include "blade_theme_simple_init.h"
typedef CORBA_char CORBA_char_nodup;

static int
not_here(char *s)
{
    croak("%s not implemented on this architecture", s);
    return -1;
}

static double
constant(char *name, int arg)
{
    errno = 0;
    switch (*name) {
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}


MODULE = BLADE		PACKAGE = BLADE

PROTOTYPES: DISABLE

double
constant(name,arg)
	char *		name
	int		arg


void
blade_hr(blade)
	blade_env * blade
	ALIAS:
		BLADE::blade_hr = 1
		blade_envPtr::hr = 2

void
blade_br(blade)
	blade_env * blade
	ALIAS:
		BLADE::blade_br = 1
		blade_envPtr::br = 2

void
blade_b(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_b = 1
		blade_envPtr::b = 2

void
blade_i(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_i = 1
		blade_envPtr::i = 2

void
blade_u(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_u = 1
		blade_envPtr::u = 2

void
blade_s(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_s = 1
		blade_envPtr::s = 2

void
blade_h1(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_h1 = 1
		blade_envPtr::h1 = 2

void
blade_h2(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_h2 = 1
		blade_envPtr::h2 = 2

void
blade_h3(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_h3 = 1
		blade_envPtr::h3 = 2

void
blade_h4(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_h4 = 1
		blade_envPtr::h4 = 2

void
blade_h5(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_h5 = 1
		blade_envPtr::h5 = 2

void
blade_h6(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_h6 = 1
		blade_envPtr::h6 = 2

void
blade_ul(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_ul = 1
		blade_envPtr::ul = 2

void
blade_ol(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_ol = 1
		blade_envPtr::ol = 2

void
blade_li(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_li = 1
		blade_envPtr::li = 2

void
blade_dir(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_dir = 1
		blade_envPtr::dir = 2

void
blade_dd(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_dd = 1
		blade_envPtr::dd = 2

void
blade_center(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_center = 1
		blade_envPtr::center = 2

void
blade_p(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_p = 1
		blade_envPtr::p = 2

void
blade_pre(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_pre = 1
		blade_envPtr::pre = 2

void
blade_big(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_big = 1
		blade_envPtr::big = 2

void
blade_em(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_em = 1
		blade_envPtr::em = 2

void
blade_small(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_small = 1
		blade_envPtr::small = 2

void
blade_sub(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_sub = 1
		blade_envPtr::sub = 2

void
blade_sup(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_sup = 1
		blade_envPtr::sup = 2

void
blade_tt(blade, start)
	blade_env * blade
	int start
	ALIAS:
		BLADE::blade_tt = 1
		blade_envPtr::tt = 2

void
blade_table(blade, start, args)
	blade_env * blade
	int start
	CORBA_char * args
	ALIAS:
		BLADE::blade_table = 1
		blade_envPtr::table = 2

void
blade_tr(blade, start, args)
	blade_env * blade
	int start
	CORBA_char * args
	ALIAS:
		BLADE::blade_tr = 1
		blade_envPtr::tr = 2

void
blade_td(blade, start, args)
	blade_env * blade
	int start
	CORBA_char * args
	ALIAS:
		BLADE::blade_td = 1
		blade_envPtr::td = 2

void
blade_form(blade, start, args)
	blade_env * blade
	int start
	CORBA_char * args
	ALIAS:
		BLADE::blade_form = 1
		blade_envPtr::form = 2

void
blade_input(blade, start, type, name, value, args)
	blade_env * blade
	int start
	CORBA_char * type
	CORBA_char * name
	CORBA_char * value
	CORBA_char * args
	ALIAS:
		BLADE::blade_input = 1
		blade_envPtr::input = 2

void
blade_select(blade, start, name, args)
	blade_env * blade
	int start
	CORBA_char * name
	CORBA_char * args
	ALIAS:
		BLADE::blade_select = 1
		blade_envPtr::select = 2

void
blade_option(blade, start, value, args)
	blade_env * blade
	int start
	CORBA_char * value
	CORBA_char * args
	ALIAS:
		BLADE::blade_option = 1
		blade_envPtr::option = 2

void
blade_textarea(blade, start, name, args)
	blade_env * blade
	int start
	CORBA_char * name
	CORBA_char * args
	ALIAS:
		BLADE::blade_textarea = 1
		blade_envPtr::textarea = 2

void
blade_div(blade, start, args)
	blade_env * blade
	int start
	CORBA_char * args
	ALIAS:
		BLADE::blade_div = 1
		blade_envPtr::div = 2

void
blade_span(blade, start, args)
	blade_env * blade
	int start
	CORBA_char * args
	ALIAS:
		BLADE::blade_span = 1
		blade_envPtr::span = 2

void
blade_font(blade, start, args)
	blade_env * blade
	int start
	CORBA_char * args
	ALIAS:
		BLADE::blade_font = 1
		blade_envPtr::font = 2

void
blade_a(blade, start, args)
	blade_env * blade
	int start
	CORBA_char * args
	ALIAS:
		BLADE::blade_a = 1
		blade_envPtr::a = 2

void
blade_img(blade, src, args)
	blade_env * blade
	CORBA_char * src
	CORBA_char * args
	ALIAS:
		BLADE::blade_img = 1
		blade_envPtr::img = 2

void
blade_link(blade, start, args)
	blade_env * blade
	int start
	CORBA_char * args
	ALIAS:
		BLADE::blade_link = 1
		blade_envPtr::link = 2

void
blade_tag(blade, start, name, def)
	blade_env * blade
	int start
	CORBA_char * name
	CORBA_char * def
	ALIAS:
		BLADE::blade_tag = 1
		blade_envPtr::tag = 2

void
blade_disp(blade, string)
	blade_env * blade
	CORBA_char * string
	ALIAS:
		BLADE::blade_disp = 1
		blade_envPtr::disp = 2

CORBA_char *
blade_color(blade, name, def)
	blade_env * blade
	CORBA_char * name
	CORBA_char * def
	ALIAS:
		BLADE::blade_color = 1
		blade_envPtr::color = 2

SV *
blade_hash_new()
	PREINIT:
		blade_hash * hash;
	CODE:
		hash = blade_hash_new();
		ST(0) = sv_newmortal();
		if (!hash)
			ST(0) = &PL_sv_undef;
		else
			sv_setref_pv(ST(0),"blade_hashPtr",hash);

void
blade_hash_free(hash)
	blade_hash * hash
	ALIAS:
		BLADE::blade_hash_free = 1
		blade_hashPtr::free = 2
	CODE:
		if (ST(0) != &PL_sv_undef) {
			blade_hash_free(hash);
			sv_setsv(ST(0),&PL_sv_undef);
		}

long
blade_hash_count(hash)
	blade_hash * hash

SV *
blade_hash_dup(hash)
	blade_hash * hash
	ALIAS:
		BLADE::blade_hash_dup = 1
		blade_hashPtr::dup = 2
	PREINIT:
		blade_hash * newhash;
	CODE:
		newhash = blade_hash_dup(hash);
		ST(0) = sv_newmortal();
		if (!newhash)
			ST(0) = &PL_sv_undef;
		else
			sv_setref_pv(ST(0),"blade_hashPtr",newhash);

CORBA_char *
blade_hash_get(hash, name)
	blade_hash * hash
	CORBA_char * name
	ALIAS:
		BLADE::blade_hash_get = 1
		blade_hashPtr::get = 2

CORBA_char_nodup *
blade_hash_get_nodup(hash, name)
	blade_hash * hash
	CORBA_char * name

CORBA_char *
blade_hash_get_num(hash, number)
	blade_hash * hash
	int number
	ALIAS:
		BLADE::blade_hash_get_num = 1
		blade_hashPtr::get_num = 2

CORBA_char_nodup *
blade_hash_get_num_nodup(hash, number)
	blade_hash * hash
	int number
	ALIAS:
		BLADE::blade_hash_get_num_nodup = 1
		blade_hashPtr::get_num_nodup = 2

CORBA_char *
blade_hash_get_num_name(hash, number)
	blade_hash * hash
	int number
	ALIAS:
		BLADE::blade_hash_get_num_name = 1
		blade_hashPtr::get_num_name = 2

CORBA_char_nodup *
blade_hash_get_num_name_nodup(hash, number)
	blade_hash * hash
	int number
	ALIAS:
		BLADE::blade_hash_get_num_name_nodup = 1
		blade_hashPtr::get_num_name_nodup = 2

void
blade_hash_set(hash, name, value)
	blade_hash * hash
	CORBA_char * name
	CORBA_char * value
	ALIAS:
		BLADE::blade_hash_set = 1
		blade_hashPtr::set = 2

void
blade_hash_set_nodel(hash, name, value)
	blade_hash * hash
	CORBA_char * name
	CORBA_char * value
	ALIAS:
		BLADE::blade_hash_set_nodel = 1
		blade_hashPtr::set_nodel = 2

int
blade_hash_exists_in(hash, name)
	blade_hash * hash
	CORBA_char * name
	ALIAS:
		BLADE::blade_hash_exists_in = 1
		blade_hashPtr::exists_in = 2

int
blade_web_vars_count(blade)
	blade_env * blade
	ALIAS:
		BLADE::blade_web_vars_count = 1
		blade_envPtr::web_vars_count = 2

CORBA_char * 
blade_web_vars_get(blade, name)
	blade_env * blade
	CORBA_char * name
	ALIAS:
		BLADE::blade_web_vars_get = 1
		blade_envPtr::web_vars_get = 2

CORBA_char_nodup *
blade_web_vars_get_nodup(blade, name)
	blade_env * blade
	CORBA_char * name
	ALIAS:
		BLADE::blade_web_vars_get_nodup = 1
		blade_envPtr::web_vars_get_nodup = 2

void
blade_web_vars_set(blade, name, value)
	blade_env * blade
	CORBA_char * name
	CORBA_char * value
	ALIAS:
		BLADE::blade_web_vars_set = 1
		blade_envPtr::web_vars_set = 2

SV *
blade_web_vars_get_all(blade)
	blade_env * blade
	ALIAS:
		BLADE::blade_web_vars_get_all = 1
		blade_envPtr::web_vars_get_all = 2
	PREINIT:
		blade_hash * hash;
	CODE:
		hash = blade_web_vars_get_all(blade);
		ST(0) = sv_newmortal();
		if (!hash)
			ST(0) = &PL_sv_undef;
		else
			sv_setref_pv(ST(0),"blade_hashPtr",hash);

CORBA_char *
blade_web_vars_get_num(blade, number)
	blade_env * blade
	int number
	ALIAS:
		BLADE::blade_web_vars_get_num = 1
		blade_envPtr::web_vars_get_num = 2

CORBA_char_nodup *
blade_web_vars_get_num_nodup(blade, number)
	blade_env * blade
	int number
	ALIAS:
		BLADE::blade_web_vars_get_num_nodup = 1
		blade_envPtr::web_vars_get_num_nodup = 2

CORBA_char *
blade_web_vars_get_num_name(blade, number)
	blade_env * blade
	int number
	ALIAS:
		BLADE::blade_web_vars_get_num_name = 1
		blade_envPtr::web_vars_get_num_name = 2

CORBA_char_nodup *
blade_web_vars_get_num_name_nodup(blade, number)
	blade_env * blade
	int number
	ALIAS:
		BLADE::blade_web_vars_get_num_name_nodup = 1
		blade_envPtr::web_vars_get_num_name_nodup = 2

int
blade_auth(blade)
	blade_env * blade
	ALIAS:
		BLADE::blade_auth = 1
		blade_envPtr::auth = 2

CORBA_char *
blade_return_buffer(blade)
	blade_env * blade
	ALIAS:
		BLADE::blade_return_buffer = 1
		blade_envPtr::return_buffer = 2

void
blade_destroy(blade)
	blade_env * blade
	ALIAS:
		BLADE::blade_destroy = 1
		blade_envPtr::destroy = 2
	CODE:
		if (ST(0) != &PL_sv_undef) {
			unregister_blade_run_callback(blade);
			blade_destroy(blade);
			sv_setsv(ST(0),&PL_sv_undef);
		}

void
blade_destroy_no_env(blade)
	blade_env * blade
	ALIAS:
		BLADE::blade_destroy_no_env = 1
		blade_envPtr::destroy_no_env = 2
	CODE:
		if (ST(0) != &PL_sv_undef) {
			unregister_blade_run_callback(blade);
			blade_destroy_no_env(blade);
			sv_setsv(ST(0),&PL_sv_undef);
		}

void
blade_obj(blade, obj_name, name, args, activation_flags, start_args)
	blade_env * blade
	CORBA_char * obj_name
	CORBA_char * name
	CORBA_char * args
	CORBA_short activation_flags
	CORBA_char * start_args
	ALIAS:
		BLADE::blade_obj = 1
		blade_envPtr::obj = 2

void
blade_link_file(blade, name)
	blade_env * blade
	CORBA_char * name
	ALIAS:
		BLADE::blade_link_file = 1
		blade_envPtr::link_file = 2

void
blade_url_decode(string)
	CORBA_char * string

CORBA_char *
blade_url_encode(string)
	CORBA_char * string

void
blade_session_set_var(blade, name, value, temp)
	blade_env * blade
	CORBA_char * name
	CORBA_char * value
	int temp
	ALIAS:
		BLADE::blade_session_set_var = 1
		blade_envPtr::session_set_var = 2

CORBA_char *
blade_session_get_var(blade, name)
	blade_env * blade
	CORBA_char * name
	ALIAS:
		BLADE::blade_session_get_var = 1
		blade_envPtr::session_get_var = 2

CORBA_char *
blade_session_get_set(blade, name, temp)
	blade_env * blade
	CORBA_char * name
	int temp
	ALIAS:
		BLADE::blade_session_get_set = 1
		blade_envPtr::session_get_set = 2

void
blade_orb_run()

SV *
blade_page_init(args_ref, context, lang)
	SV * args_ref
	CORBA_char * context
	CORBA_char * lang
	PREINIT:
		int argc;
		char **argv;
		blade_env * blade;
	CODE:

	if (args_ref != &PL_sv_undef && (!SvROK(args_ref) || SvTYPE(SvRV(args_ref)) != SVt_PVAV))
		croak("blade_page_init() - first argument must be undef or array ref");

	move_to_argv(args_ref, &argc, &argv);
	blade = blade_page_init(&argc,argv,context,lang);
	move_to_array(args_ref, argc, argv);

	ST(0) = sv_newmortal();
	if (!blade)
		ST(0) = &PL_sv_undef;
	else
		sv_setref_pv(ST(0),"blade_envPtr",blade);


int
blade_run(blade, code, bar_title, page_title, head, right_name, accept_unlisted)
	blade_env * blade
	SV * code
	char * bar_title
	char * page_title
	char * head
	char * right_name
	int accept_unlisted
	ALIAS:
		BLADE::blade_run = 1
		blade_envPtr::run = 2
	CODE:
	if (SvROK(code) && SvTYPE(SvRV(code)) == SVt_PVCV) {
		register_blade_run_callback(blade, SvRV(code));
		RETVAL = blade_run(blade,blade_run_wrapper,bar_title,page_title,head,right_name,accept_unlisted);

	}
	else
		croak("blade_run() - second argument must be a code reference");
	OUTPUT:
		RETVAL

int
blade_obj_simple_init(args_ref, code, data)
	SV * args_ref
	SV * code
	SV * data
	PREINIT:
		int argc;
		char **argv;
	CODE:

	if (SvROK(code) && SvTYPE(SvRV(code)) == SVt_PVCV) {
		if (args_ref != &PL_sv_undef && (!SvROK(args_ref) || SvTYPE(SvRV(args_ref)) != SVt_PVAV))
			croak("blade_obj_simple_init() - first argument must be undef or array ref");

		move_to_argv(args_ref, &argc, &argv);
		register_blade_obj_simple_init_callback(SvRV(code), data);
		RETVAL = blade_obj_simple_init(&argc,argv,blade_obj_simple_init_wrapper,NULL);
		move_to_array(args_ref, argc, argv);

	}
	else
		croak("blade_obj_simple_init() - second argument must be a code reference");
	OUTPUT:
		RETVAL

int
blade_theme_simple_init(args_ref, start_code, end_code, init_code, data)
	SV * args_ref
	SV * start_code
	SV * end_code
	SV * init_code
	SV * data
	PREINIT:
		int argc;
		char **argv;
	CODE:

	if ( SvROK(start_code) && SvTYPE(SvRV(start_code)) == SVt_PVCV &&
	     SvROK(end_code) && SvTYPE(SvRV(end_code)) == SVt_PVCV &&
	     SvROK(init_code) && SvTYPE(SvRV(init_code)) == SVt_PVCV) {
		if (args_ref != &PL_sv_undef && (!SvROK(args_ref) || SvTYPE(SvRV(args_ref)) != SVt_PVAV))
			croak("blade_theme_simple_init() - first argument must be undef or array ref");

		move_to_argv(args_ref, &argc, &argv);
		register_blade_theme_simple_init_callbacks(SvRV(start_code), SvRV(end_code), SvRV(init_code), data);
		RETVAL = blade_theme_simple_init(&argc,argv,
		   blade_theme_simple_init_start_wrapper,
		   blade_theme_simple_init_end_wrapper,
		   blade_theme_simple_init_init_wrapper,
		   NULL
		);
		move_to_array(args_ref, argc, argv);

	}
	else
		croak("blade_theme_simple_init() - second, third and fourth arguments must be code references");
	OUTPUT:
		RETVAL

MODULE = BLADE		PACKAGE = blade_hashPtr

void
DESTROY(hash)
	blade_hash * hash
	CODE:
		if (ST(0) != &PL_sv_undef) {
			blade_hash_free(hash);
			sv_setsv(ST(0),&PL_sv_undef);
		}
