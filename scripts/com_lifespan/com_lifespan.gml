/// @description  com_lifespan(game_object, frames)
/// @param game_object
/// @param  frames

if argument1 <= 0 {
    argument0.destroy_by = "timer"
    instance_destroy(argument0)
    return noone
}

with component_create(argument0, Lifespan) {
    alarm_set(ALARM_DESTROY, argument1)
    return id
}
