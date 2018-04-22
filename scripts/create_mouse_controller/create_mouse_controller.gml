/// @description  create_mouse_controller(game_controller)
/// @param game_controller

var game_controller = argument0
var controller = instance_create(0, 0, MouseController);

controller.game_controller = game_controller

add_observer(game_controller.state_change, controller)

return controller
