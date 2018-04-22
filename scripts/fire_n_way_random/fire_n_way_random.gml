/// @description  fire_n_way_random(x, y, speed, count, angle, angle_range, object_index)
/// @param x
/// @param  y
/// @param  speed
/// @param  count
/// @param  angle
/// @param  angle_range
/// @param  object_index

var xx = argument0
var yy = argument1
var sspeed = argument2
var count = argument3
var angle = argument4
var angle_range = argument5
var Obj = argument6

var instances = undefined

for (var i = 0; i < count; ++i) {
    var ndir = angle + angle_range * random_range(-.5, .5);
    instances[i] = fire_directional(xx, yy, sspeed, ndir, Obj)
}

return instances
