/// @description  create_wave(player, tick)
/// @param player
/// @param  tick

var player = argument0
var tick = argument1

var h = 200

/*
repeat 5 {
    var start_x = random(room_width)
    var start_y = random_range(-h, 0)
    var generate_dir = 90 + random(30) - 15
    var step_length = 20
    var step_x = lengthdir_x(step_length, generate_dir)
    var step_y = lengthdir_y(step_length, generate_dir)
    var count = 5
    
    for (var i = 0; i < count; ++i) {
        var dx = random_range(-2, 2)
        var dy = random_range(-2, 2)
        with create_missile(start_x + i * step_x + dx, start_y + i * step_y + dy) {
            direction = generate_dir + 180
        }
    }
}
*/


repeat irandom(3) + 3 {
    with create_missile(random(room_width), random_range(-h, 0), true) {
        direction = 270 + random(30) - 15
    }
}

repeat irandom(2) {
    with create_missile(random(room_width), random_range(-h, 0), true) {
        direction = point_direction(x, y, player.x, player.y)
    }
}

if tick > second(20) {
    repeat irandom(3) {
        with create_mirv(random(room_width), random_range(-h, 0), second(8 + random(1))) {
            direction = point_direction(x, y, player.x, player.y)
            speed = .5
        }
    }
}

if tick > second(60) {
    repeat irandom(2) {
        with create_missile(random(room_width), random_range(-h, 0), true) {
            direction = point_direction(x, y, player.x, player.y)
            speed = 3
        }
    }
}

/*
repeat irandom(2) {
    var xx = random(room_width)
    var yy = random_range(-h, 0)
    var theta = 15
    var dir = point_direction(xx, yy, player.x, player.y)
    var ss = 2
    var n = 2

    create_n_way_missile(xx, yy, ss, n, dir, theta)
    set_timeout(cmd_create(create_n_way_missile, xx + 2, yy, ss, n, dir, theta), second(2))
    set_timeout(cmd_create(create_n_way_missile, xx - 2, yy, ss, n, dir, theta), second(4))
}
*/

if tick > second(80) {
    repeat irandom(1) {
        create_laser_pointer(random(room_width), 0)
    }
}

/*
if tick > second(10) {
    repeat irandom(1) {
        var start_time = 2 + random(2)
        var stop_time = 2 + start_time
        create_super_bombing_run(player.x)
    }
}
*/
