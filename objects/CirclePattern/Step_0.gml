// action
if time == 0 {
    var shots = fire_circle(_model.x, _model.y, velocity, arm, _model.image_angle, true, type)
    for (var i = 0; i < array_length_1d(shots); ++i) {
        with component_create(shots[i], MovementExt) {
            accel = other.shot_accel
            direction_rate = other.shot_direction_rate
        }
    }
}

// update time
time = ++time mod interval


