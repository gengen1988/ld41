/// @description  cancel_infrastructure(infrastructure)
/// @param infrastructure

var infrastructure = argument0

show_debug_message("cancel infrastructure")

var menu_item = infrastructure.menu_item;

menu_item.selected_item = noone
menu_item.state = "normal"
