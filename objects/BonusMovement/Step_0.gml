switch _model.state {
case "appear":
    if _model.speed > 0 {
        _model.speed -= _model.max_speed / 30
    } else {
        _model.speed = 0
        _model.max_speed = 2
        _model.gravity = .01
        _model.state = "drop"
    }
    break
    
case "drop":
    if _model.speed > _model.max_speed {
        _model.speed = _model.max_speed
    }
    target = instance_nearest(_model.x, _model.y, ColliderPlayerBuilding)
    if target != noone && point_distance(_model.x, _model.y, target.x, target.y) < 100 {
        _model.speed = 4
        _model.gravity = 0
        _model.state = "attractive"
    }
    break
    
case "attractive":
    if instance_exists(target) {
        var should_direction = point_direction(_model.x, _model.y, target.x, target.y);
        _model.direction += angle_difference(should_direction, _model.direction) / 3
    }

    break
}





