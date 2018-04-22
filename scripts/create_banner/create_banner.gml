/// @description  create_banner("text")
/// @param "text"

var drawer = instance_create(0, 0, BannerDrawer);
drawer.text = argument0
disable(drawer)

return drawer
