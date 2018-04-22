system = part_system_create()
emitter = part_emitter_create(system)
type = part_type_create()

part_type_direction(type, 90, 90, 0, 0)
part_type_alpha2(type, 1, 0)
part_type_life(type, 20, 30)
part_type_speed(type, 0, 1, -.01, 0)
part_type_sprite(type, spr_dot, false, false, false)

burst_count = 1

