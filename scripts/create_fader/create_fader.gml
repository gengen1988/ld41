/// @description  create_fader(x, y, r)
/// @param x
/// @param  y
/// @param  r

var fader = instance_create(argument0, argument1, GameObject)
with component_create(fader, FadeDrawer) {
    r = argument2
}
