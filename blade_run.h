#ifndef _BLADE_PM_BLADE_RUN_H
#define _BLADE_PM_BLADE_RUN_H

extern void register_blade_run_callback(blade_env *blade, SV* code);
extern void unregister_blade_run_callback(blade_env *blade);
extern void blade_run_wrapper(blade_env *blade);

#endif /* _BLADE_PM_BLADE_RUN_H */
