if state == "in" {
    if _model.speed <= 0 {
        enable(_model.tagger)
        _model.movement.accel = 0
        _model.speed = 0
        state = "stay"
    }
}


