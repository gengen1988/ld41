/// @description  place_infrastructure(x, y, infrastructure, game_controller)
/// @param x
/// @param  y
/// @param  infrastructure
/// @param  game_controller

var xx = argument0
var yy = argument1
var infrastructure = argument2
var game_controller = argument3

global.gold -= infrastructure.price

var building

switch infrastructure.index {
case "house":
	building = create_house(xx, yy)
	break
case "armoury":
	building = create_armoury(xx, yy)
	break
}

game_over_track(building)

show_debug_message("place infrastructure")
var menu_item = infrastructure.menu_item;

menu_item.selected_item = noone
menu_item.state = "normal"
