/// @description  load_player_types()

var map_data = read_json_file("player.json")

var step_width = room_width / ds_map_size(map_data)

var array_result = undefined
var i = 0
for (var key = ds_map_find_first(map_data); !is_undefined(key); key = ds_map_find_next(map_data, key)) {
    var map_properties = map_data[? key]
    with instance_create(step_width *.5 + i * step_width, rh(0), GameObject) {
        name = map_properties[? "name"]
        array_result[i] = id
        depth = 10
        sprite_index = spr_button
        component_create(id, ButtonDrawer)
        with component_create(id, OnClick) {
            command = cmd_create(begin_game, key)
        }
    }
    ++i
}

ds_map_destroy(map_data)

return array_result
