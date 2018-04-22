if is_undefined(_model.mouse_controller) {
    exit
}

var mouse_controller = _model.mouse_controller

switch mouse_controller.state {
case "aiming":
    var weapon_data = map_weapon[? current_weapon]
    var burst = weapon_data[? "burst"]
    var burst_interval = weapon_data[? "burst_interval"]
    
    if mouse_check_button_pressed(mb_left) && global.ammo >= burst {    
        for (var i = 0; i < burst; ++i) {
            var cmd = cmd_create(fire_shot, _model, weapon_data)
            set_timeout(cmd, second(burst_interval * i))
        }
        global.ammo -= burst
    }
    break
}


/*
if is_undefined(_model.mouse_controller) {
    exit
}

var mouse_controller = _model.mouse_controller

switch mouse_controller.state {
case "aiming":
    if mouse_check_button_pressed(mb_left) && _model.ammo >= 1 {
        var shot_direction = point_direction(_model.x, _model.y, mouse_x, mouse_y)
        var shot_lifespan = point_distance(_model.x, _model.y, mouse_x, mouse_y) / _model.shot_speed
        
        audio_play_sound(sfx_fire, 0, false)
        create_shot(_model.x, _model.y, _model.shot_speed, shot_direction, shot_lifespan, _model.explosion_power)
        --_model.ammo
    }
    break
}
*/

/* */
/*  */
