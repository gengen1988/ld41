/// @description  fire_n_way(x, y, speed, n, direction, theta, obj)
/// @param x
/// @param  y
/// @param  speed
/// @param  n
/// @param  direction
/// @param  theta
/// @param  obj

var xx = argument0
var yy = argument1
var sspeed = argument2
var n = argument3
var dir = argument4
var theta = argument5
var Obj = argument6

var instances = undefined

for (var i = 0; i < n; ++i) {
    var ndir = dir + i * theta - (n - 1) * theta / 2;
    instances[i] = fire_directional(xx, yy, sspeed, ndir, Obj)
}

return instances
