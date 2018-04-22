system = part_system_create()
emitter = part_emitter_create(system)
type_cloud = part_type_create()

var cloud_y = 0

part_type_shape(type_cloud, pt_shape_cloud)

part_emitter_region(system, emitter, 0, room_width, cloud_y, cloud_y, ps_shape_line, ps_distr_linear)


