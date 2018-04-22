draw_set_color(c_black)

draw_rectangle(left, top, right, bottom, false)
draw_set_color(c_white)
draw_text(left, top, string_hash_to_newline("SCORE: " + string(score)))

