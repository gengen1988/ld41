/// @description  create_next_button(x, y, game_controller)
/// @param x
/// @param  y
/// @param  game_controller

var game_controller = argument2

var button = instance_create(argument0, argument1, NextButton);

button.sprite_disabled = spr_button_next_disabled
button.sprite_mouseover = spr_button_next_mouseover
button.sprite_normal = spr_button_next_normal
button.game_controller = game_controller

add_observer(game_controller.state_change, button)

return button
