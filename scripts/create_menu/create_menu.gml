/// @description  create_menu(x, y, game_controller)
/// @param x
/// @param  y
/// @param  game_controller

var menu = instance_create(argument0, argument1, Menu)
var game_controller = argument2

add_observer(game_controller.state_change, menu)

return menu
