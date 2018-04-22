if time == 0 {
    with create_bomb(_model.x, _model.y) {
        hspeed = other._model.hspeed
    }
}

time = ++time mod interval

