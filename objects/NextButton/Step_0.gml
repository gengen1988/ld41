if countdown > 0 {
    countdown--
}

switch state {
case "normal":
    sprite_index = sprite_normal
    if position_meeting(mouse_x, mouse_y, id) {
        state = "mouseover"
    }
    break
    
case "disabled":
    sprite_index = sprite_disabled
    break
    
case "mouseover":
    sprite_index = sprite_mouseover
    if position_meeting(mouse_x, mouse_y, id) {
        if mouse_check_button_pressed(mb_left) {
            game_controller.next_wave = true
            state = "disabled"
        }

    } else {
        state = "normal"
    }

    break
}

