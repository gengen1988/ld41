// movement extend
_model.speed = clamp(_model.speed + accel, min_speed, max_speed)
_model.image_angle = deg_inc(_model.image_angle, image_angle_rate)
_model.direction = deg_inc(_model.direction, direction_rate)

