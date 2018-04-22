/// @description  split_mirv(missile)
/// @param missile

var _model = argument0

if !instance_exists(_model) {
    exit
}

var theta = 15
var count = 4

var gc = pick_object(GameController)
gc.enemy_count += count

var array_warhead = undefined

for (var i = 0; i < count; ++i) {
    with create_missile(_model.x, _model.y, false) {
        name = "warhead"
        gravity = .005
        speed = _model.speed
        array_warhead[i] = id
		with component_create(id, StateTracker) {
	        state = gc
	    }
    }
}
set_n_way_direction(array_warhead, _model.direction, theta)

instance_destroy_with_reason(_model, reason.SELF)

