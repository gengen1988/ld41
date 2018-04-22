draw_set_halign(fa_center)
draw_set_valign(fa_middle)

var height = 20

draw_set_color(c_white)
draw_rectangle(0, rh(0) - height / 2, room_width, rh(0) + height / 2, false)

draw_set_color(c_black)
draw_text(rw(0), rh(0), string_hash_to_newline(text))

draw_set_color(c_white)

