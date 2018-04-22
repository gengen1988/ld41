var platform_alive = false

for (var key = ds_map_find_first(map_building); ds_map_exists(map_building, key); key = ds_map_find_next(map_building, key)) {
	if instance_exists(map_building[? key]) {
		platform_alive = true
		break
	}
}

if !instance_exists(player) || !platform_alive {
    cmd_execute(command)
	instance_destroy(player)
	var gc = pick_object(GameController)
	gc.gameOver = true
    instance_destroy()
}


