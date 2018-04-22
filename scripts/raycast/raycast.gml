/// @description  raycast(x, y, direction, distance, collision_with)
/// @param x
/// @param  y
/// @param  direction
/// @param  distance
/// @param  collision_with

var xx = argument0
var yy = argument1
var dir = argument2
var dis = argument3
var obj = argument4

var step_x = lengthdir_x(1, dir)
var step_y = lengthdir_y(1, dir)

var collison, test_x, test_y

for (var i = 0; i < dis; ++i) {
    test_x = xx + i * step_x
    test_y = yy + i * step_y
    
    collision = collision_point(test_x, test_y, obj, true, true)
    if collision != noone {
        break
    }
}

var result = undefined;
result[0] = collision
result[1] = test_x
result[2] = test_y

return result
