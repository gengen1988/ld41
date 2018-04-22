/// @description  draw_line_dash(x1, y1, x2, y2, dash_length)
/// @param x1
/// @param  y1
/// @param  x2
/// @param  y2
/// @param  dash_length

var x1 = argument0
var y1 = argument1
var x2 = argument2
var y2 = argument3
var dash_length = argument4

var dis = point_distance(x1, y1, x2, y2)
var dir = point_direction(x1, y1, x2, y2)
var loop = floor(dis / dash_length)

var step_x = lengthdir_x(dash_length, dir)
var step_y = lengthdir_y(dash_length, dir)

for (var i = 0; i < loop; ++i) {
    if i mod 2 == 0 {
        draw_line_width(x1 + i * step_x, y1 + i * step_y, x1 + (i + 1) * step_x, y1 + (i + 1) * step_y, 1)
        //draw_line_width(x1 + i * step_x, y1 + i * step_y, x1 + (i + 1) * step_x, y1 + (i + 1) * step_y, 1)
    }
}
