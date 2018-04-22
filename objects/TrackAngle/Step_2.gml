if !instance_exists(target) {
    exit
}

_model.image_angle = point_direction(_model.x, _model.y, target.x, target.y)

