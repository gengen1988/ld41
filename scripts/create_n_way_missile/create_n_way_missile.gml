/// @description  create_n_way_missile(x, y, speed, n, direction, theta)
/// @param x
/// @param  y
/// @param  speed
/// @param  n
/// @param  direction
/// @param  theta

var xx = argument0
var yy = argument1
var ss = argument2
var n = argument3
var dir = argument4
var theta = argument5

var array_missile = undefined

for (var i = 0; i < n; ++i) {    
    with create_missile(xx, yy, true) {
        speed = ss
        array_missile[i] = id
    }
}

set_n_way_direction(array_missile, dir, theta)
return array_missile
