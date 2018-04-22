var current_collided = _model.current_collided

if current_collided != noone && prev_collided != current_collided {
    if !_model.invincible {
        _model.hp -= current_collided.damage
    }
}

prev_collided = current_collided


