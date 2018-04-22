/// @description  create_trailer(game_object, stay_time)
/// @param game_object
/// @param  stay_time

var missile = argument0
var stay_time = argument1

var trailer = instance_create(missile.x, missile.y, GameObject);

missile.trailer = trailer
trailer.color = c_white

// count down
trailer.lifespanner = com_lifespan(trailer, stay_time)
disable(trailer.lifespanner)

// drawer
with component_create(trailer, TrailDrawer) {
    max_trail = stay_time / interval
    trail_x = array_create_compat(max_trail, undefined)
    trail_y = array_create_compat(max_trail, undefined)
}

// follow missile
follow_object(trailer, missile)

return trailer
