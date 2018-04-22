/// @description  set_menu_enabled(build_menu, value)
/// @param build_menu
/// @param  value

var menu = argument0
var value = argument1

for (var i = 0; i < ds_list_size(menu.list_menu_item); ++i) {
    var item = menu.list_menu_item[| i]
    if value {
        item.state = "normal"
    } else {
        item.state = "disabled"
    }
}
