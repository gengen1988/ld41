gameOver = false

state = "playing"   // or building or gameover
enemy_count = 0
next_wave = false

banner_1 = create_banner("wave start")
banner_2 = create_banner("build phase")

state_change = create_observable()

wave_number = 0

map_enemy_level = ds_map_create()
map_enemy_level[?"normal"] = 3
map_enemy_level[?"leaflet"] = 1
map_enemy_level[?"armour"] = 2




