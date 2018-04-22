// check collision
for (var i = 0; i < array_length_1d(array_colliders); ++i) {
    var collider = collision_circle(_model.x, _model.y, r, array_colliders[i], true, false)
    if collider != noone {
        with _model {
            with collider {
                event_perform(ev_collision, other.object_index)
            }
        }
    }
}

// update r
r += delta_r

