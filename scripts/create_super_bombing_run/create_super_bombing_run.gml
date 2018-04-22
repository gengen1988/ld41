/// @description  create_super_bombing_run(x)
/// @param x

var margin = 400
var sx1 = - margin + argument0
var sx2 = argument0 + margin
var ss = 1

var t = .8

// ======= left
with create_bomber(sx1, 200, 0, second(t)) {
    speed = ss
}

with create_bomber(sx1 - 20, 200, 0, second(t)) {
    speed = ss
}

with create_bomber(sx1 - 40, 200, 0, second(t)) {
    speed = ss
}

// ======== right
with create_bomber(sx2, 200, 0, second(t)) {
    speed = ss
    direction = 180
}

with create_bomber(sx2 - 20, 200, 0, second(t)) {
    speed = ss
    direction = 180
}

with create_bomber(sx2 - 40, 200, 0, second(t)) {
    speed = ss
    direction = 180
}
