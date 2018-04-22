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
    
case "selected":
    sprite_index = sprite_selected
    break
    
case "mouseover":
    if position_meeting(mouse_x, mouse_y, id) && global.gold >= infrastructure.price {
        sprite_index = sprite_mouseover
        if mouse_check_button_pressed(mb_left) {
            if menu.selected_item != noone {
                menu.selected_item.state = "normal"
            }
            menu.selected_item = id
            mouse_controller.infrastructure = infrastructure
            mouse_controller.state = "placing"
            state = "selected"
        }
    } else {
        state = "normal"
    }
    break
}

