with _model {
    with ColliderEnemy {
        if y > other.y {
            event_perform(ev_collision, other.object_index)
        }
    }
}

