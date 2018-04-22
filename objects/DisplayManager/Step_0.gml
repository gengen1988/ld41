var key_zoom = ord("Z")

if keyboard_check_pressed(key_zoom) {
    ++zoom
    if zoom > max_zoom {
        zoom = 1
    }
    
    window_set_size(ideal_width * zoom, ideal_height * zoom)
    if allow_subpixel {
        surface_resize(application_surface, ideal_width * zoom, ideal_height * zoom)
    }
    alarm_set(ALARM_CENTER, 1)
}

