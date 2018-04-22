switch state {
case "aiming":
    cursor = spr_mouse_aimming  
    break

case "placing":
    cursor = infrastructure.icon
    
    if mouse_x > build_area_right || mouse_x < build_area_left || mouse_y > build_area_bottom || mouse_y < build_area_top {
        break
    }
    if mouse_check_button_pressed(mb_left) {
        place_infrastructure(mouse_x, waterline.y, infrastructure, game_controller)
        state = "selecting"
        
    } else if mouse_check_button_pressed(mb_right) {
        cancel_infrastructure(infrastructure)
        state = "selecting"
    }
    break
    
case "selecting":
    cursor = spr_mouse_pointer
    break
}

