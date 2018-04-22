var current_collided = _model.current_collided

if current_collided != noone && current_collided.object_index == ColliderScene {
    create_surface_explosion(_model.x, _model.y, _model.explosion_radius, second(EXPLOSION_STAY))
    instance_destroy(_model)
}

