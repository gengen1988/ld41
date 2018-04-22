/// @description  create_mirv(x, y, sprite_time)
/// @param x
/// @param  y
/// @param  sprite_time

var missile = create_missile(argument0, argument1, true)

set_timeout(cmd_create(split_mirv, missile), argument2)

return missile

