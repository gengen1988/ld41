if !instance_exists(player) {
    instance_destroy(_model)
    exit
}

var shot_speed = _model.shot_speed
var player_x = player.x
var player_y = player.y
var angle_range = 30

create_wave(player, tick)

/*
repeat _model.shot_count {
    with create_mirv(random(room_width), 0) {
        direction = point_direction(x, y, player_x, player_y) + random(angle_range) - angle_range *.5
        speed = shot_speed
    }
}
*/

alarm_set(ALARM_GENERATE, second(_model.interval))

/* */
/*  */
