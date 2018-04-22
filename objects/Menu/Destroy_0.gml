ds_map_destroy(map_data)

for (var i = 0; i < ds_list_size(list_menu_item); ++i) {
    instance_destroy(list_menu_item[| i])
}

ds_list_destroy(list_menu_item)


