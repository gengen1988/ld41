/// @description  create_laser_pointer(x, y)
/// @param x
/// @param  y

var pointer = instance_create(argument0, argument1, ColliderEnemy);
pointer.sprite_index = spr_ufo
pointer.direction = 270
pointer.speed = 3

component_create(pointer, PointerState)

with component_create(pointer, MovementExt) {
    accel = -.05
    pointer.movement = id
}

with component_create(pointer, TagLaser) {
    target = get_player()
    pointer.tagger = id
    disable(id)
}

