switch state {
case "placing":
    draw_rectangle_dash(build_area_left, build_area_top, build_area_right, build_area_bottom, 3)
    if mouse_x > build_area_right || mouse_x < build_area_left || mouse_y > build_area_bottom || mouse_y < build_area_top {
        draw_sprite(cursor, 0, mouse_x, mouse_y)
        break
    }
    draw_line_dash(mouse_x, build_area_top, mouse_x, build_area_bottom, 3)
    draw_set_alpha(.5)
    draw_sprite(infrastructure.icon, 0, mouse_x, waterline.y)
    draw_set_alpha(1)
    
    break
default:
    draw_sprite(cursor, 0, mouse_x, mouse_y)
}

