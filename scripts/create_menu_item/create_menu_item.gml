/// @description  create_menu_item(menu, map_data)
/// @param menu
/// @param  map_data

var menu = argument0
var map_data = argument1

var item = instance_create(0, 0, MenuItem);
item.menu = menu

item.sprite_normal = asset_get_index(map_data[? "pic"])
item.sprite_selected = asset_get_index(map_data[? "pic"] + "_inv")
item.sprite_disabled = asset_get_index(map_data[? "pic"] + "_disabled")
item.sprite_mouseover = asset_get_index(map_data[? "pic"] + "_inv")

item.infrastructure = create_infrastructure(item, map_data)

return item
