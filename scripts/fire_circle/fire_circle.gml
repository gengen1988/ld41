/// @description  fire_circle(x, y, speed, n, direction, is_odd, obj)
/// @param x
/// @param  y
/// @param  speed
/// @param  n
/// @param  direction
/// @param  is_odd
/// @param  obj

var xx = argument0
var yy = argument1
var sspeed = argument2
var n = argument3
var dir = argument4
var is_odd = argument5
var Obj = argument6

var theta = 360 / n
var offset = theta / 2
var instances = undefined

if is_odd {
    offset = 0
}

for (var i = 0; i < n; ++i) {
    var ndir = dir + i * theta + offset;
    instances[i] = fire_directional(xx, yy, sspeed, ndir, Obj)
}

return instances
