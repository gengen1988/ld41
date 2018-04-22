for (var i = 1; i < max_trail - trail_margin; ++i) {
    var x1 = trail_x[i - 1]
    var y1 = trail_y[i - 1]
    var x2 = trail_x[i]
    var y2 = trail_y[i]
    
    if !is_undefined(x1) && !is_undefined(y1) && !is_undefined(x2) && !is_undefined(y2) {
        var glow_count = 4
        var glow_width = 12
        var trail_width = 2
        
        draw_set_alpha(i / max_trail)
        
        // draw glow
        for (var j = 1; j < glow_count; ++j) {
            var current_alpha = j / glow_count
            var current_width = trail_width + (1 - (j / glow_count)) * (glow_width - trail_width)
            draw_set_blend_mode(bm_add)
            draw_set_color(make_color_hsv(color_get_hue(_model.color), color_get_saturation(_model.color), current_alpha * 32))
            draw_line_width(x1, y1, x2, y2, current_width)
            draw_set_blend_mode(bm_normal)
        }
    
        // draw the core
        draw_set_color(_model.color)
        draw_line_width(x1, y1, x2, y2, trail_width)
    }
}

draw_set_alpha(1)
draw_set_color(c_white)

