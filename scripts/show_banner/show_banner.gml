/// @description  show_banner(banner)
/// @param banner

var banner = argument0

enable(banner)
set_timeout(cmd_create(disable, banner), second(1))

