draw_set_halign(fa_top)
draw_set_valign(fa_left)

var all_output = 0

with ColliderBuilding {
	all_output += output
}

draw_text(0, 0, string_hash_to_newline("enemies: " + string(enemy_count)))
draw_text(0, 20, string_hash_to_newline("res: " + string(global.gold)))
draw_text(0, 40, string_hash_to_newline("ammo: " + string(global.ammo)) + "(+" + string(all_output) + ")")
draw_text(0, 60, string_hash_to_newline("score: " + string(score)))

