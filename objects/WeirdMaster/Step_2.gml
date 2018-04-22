_model.angle = floor_mod(_model.angle + _model.angle_rate, 360)
_model.theta = _model.a * cos(degtorad(_model.angle)) + 270

_model.warhead.x = _model.x + lengthdir_x(_model.r, _model.theta)
_model.warhead.y = _model.y + lengthdir_y(_model.r, _model.theta)


