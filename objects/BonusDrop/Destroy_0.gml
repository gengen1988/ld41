if _model.hp <= 0 {
    score += 1
    repeat _model.bonus {
        create_bonus(_model.x, _model.y)
    }
}


