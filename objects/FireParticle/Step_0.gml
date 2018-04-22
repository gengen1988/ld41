var width = _model.sprite_width

part_emitter_region(system, emitter, _model.x - width / 2, _model.x + width / 2, _model.y, _model.y, ps_shape_line, ps_distr_linear)
part_emitter_burst(system, emitter, type, burst_count)

