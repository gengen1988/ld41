/// @description  create_player(x, y, type)
/// @param x
/// @param  y
/// @param  type

var xx = argument0
var yy = argument1
var type = argument2

var map_data = read_json_file("player.json")
var map_properties = map_data[? type]

var player = instance_create(xx, yy, ColliderPlayer);
player.sprite_index = spr_ship

player.name = "ship"
player.ammo = map_properties[? "ammo"]
player.move_speed = map_properties[? "move_speed"]
player.shot_speed = map_properties[? "shot_speed"]
player.armor = map_properties[? "armor"]
player.explosion_power = map_properties[? "explosion_power"]
player.mouse_controller = undefined

component_create(player, CollisionHP)
component_create(player, MoveControl)
player.shoot_control = component_create(player, AmmoShootControl)

return player
