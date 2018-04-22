if target == noone || !instance_exists(target) {
    exit
}

var target_angle = point_direction(_model.x, _model.y, other.target.x, other.target.y)
var diff = angle_difference(target_angle, current_angle);
current_angle += diff / 10

if diff < 10 {
    ray_result = raycast(_model.x, _model.y, current_angle, length, ColliderPlayer)
}

var rr = ray_result

if !is_undefined(ray_result) && rr[0] != noone {
    with ColliderEnemy {
        if name == "missile" {
            var da = angle_difference(point_direction(x, y, rr[1], rr[2]), direction);
            direction += da / 50
        }
    }
}



