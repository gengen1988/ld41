/// @description  keyboard_8_way(up, down, left, right)
/// @param up
/// @param  down
/// @param  left
/// @param  right

// get dx and dy
var dy = keyboard_check(argument1) - keyboard_check(argument0)
var dx = keyboard_check(argument3) - keyboard_check(argument2)

// calc distance and direction
var dis = 0, dir = undefined
if dx != 0 || dy != 0 {
    dis = 1
    dir = point_direction(0, 0, dx, dy)
}

// write result
var result;
result[0] = dis
result[1] = dir

return result

