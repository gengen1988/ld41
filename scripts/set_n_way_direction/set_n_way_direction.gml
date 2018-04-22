/// @description  set_n_way_direction(array_instance, direction, theta)
/// @param array_instance
/// @param  direction
/// @param  theta

var array_instance = argument0
var angle = argument1
var theta = argument2

var n = array_length_1d(array_instance)

for (var i = 0; i < n; ++i) {
    var instance = array_instance[@ i];
    instance.direction = angle + i * theta - (n - 1) * theta / 2;
}

