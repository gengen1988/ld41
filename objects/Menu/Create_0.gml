map_data = read_indexed_json_array_file("building.json")
list_menu_item = ds_list_create()

selected_item = noone

for (var key = ds_map_find_first(map_data); !is_undefined(key); key = ds_map_find_next(map_data, key)) {
    var item = create_menu_item(id, map_data[? key])
    ds_list_add(list_menu_item, item)
}


