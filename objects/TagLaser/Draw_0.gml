if !is_undefined(ray_result) && blink {
    draw_circle(ray_result[1], ray_result[2], 2, false)
    draw_line_width(_model.x, _model.y, ray_result[1], ray_result[2], 1)
}



