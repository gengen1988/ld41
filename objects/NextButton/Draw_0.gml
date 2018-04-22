draw_self()
if countdown > 0 {
    draw_text(x, y - 30, string_hash_to_newline("countdown: " + string(floor(countdown / room_speed))))
}


