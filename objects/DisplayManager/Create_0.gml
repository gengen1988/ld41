ALARM_CENTER = 0
allow_subpixel = false

ideal_width = 640
ideal_height = 480

zoom = 1

aspect_ratio = display_get_width() / display_get_height()

ideal_width = round(ideal_height * aspect_ratio)
//ideal_height = round(ideal_width / aspect_ratio)

if ideal_width & 1 {
    ++ideal_width
}

if ideal_height & 1 {
    ++ideal_height
}

max_zoom = floor(display_get_width() / ideal_width)

for (var i = 1; i <= room_last; ++i) {
    if room_exists(i) {
        room_set_view(i, 0, true, 0, 0, ideal_width, ideal_height, 0, 0, ideal_width, ideal_height, 0, 0, 0, 0, noone)
        room_set_view_enabled(i, true)
    }
}

surface_resize(application_surface, ideal_width, ideal_height)
display_set_gui_size(ideal_width, ideal_height)
window_set_size(ideal_width, ideal_height)
alarm_set(ALARM_CENTER, 1)

room_goto_next()

