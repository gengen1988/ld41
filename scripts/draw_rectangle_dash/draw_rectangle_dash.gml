/// @description  draw_rectangle_dash(x1, y1, x2, y2, dash_length)
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

draw_line_dash(x1, y1, x2, y1, dash_length)
draw_line_dash(x2, y1, x2, y2, dash_length)
draw_line_dash(x2, y2, x1, y2, dash_length)
draw_line_dash(x1, y2, x1, y1, dash_length)

