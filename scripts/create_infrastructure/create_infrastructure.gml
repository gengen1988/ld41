/// @description  create_infrastructure(menu_item, map_data)
/// @param menu_item
/// @param  map_data

var menu_item = argument0
var map_data = argument1

var infrastructure = instance_create(0, 0, GameObject);
infrastructure.menu_item = menu_item
infrastructure.icon = asset_get_index(map_data[?"icon"])
infrastructure.price = map_data[?"price"]
infrastructure.index = map_data[?"index"]

return infrastructure
