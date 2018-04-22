/// @description  create_bomber(x, y, start_time, stop_time)
/// @param x
/// @param  y
/// @param  start_time
/// @param  stop_time

var bomber = instance_create(argument0, argument1, ColliderEnemy);
bomber.sprite_index = spr_plane
bomber.hspeed = 1

var bombing_run = component_create(bomber, BombingRun)
disable(bombing_run)

set_timeout(cmd_create(enable, bombing_run), argument2)
set_timeout(cmd_create(disable, bombing_run), argument3)

return bomber
