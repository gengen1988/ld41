if time == 0 {
    for (var i = 1; i < max_trail; ++i) {
    trail_x[i - 1] = trail_x[i]
    trail_y[i - 1] = trail_y[i]
    }
    
    trail_x[max_trail - 1] = _model.x - 1
    trail_y[max_trail - 1] = _model.y - 1
}

time = ++time mod interval

