/// @description  generate_wave(game_controller, wave_number)
/// @param game_controller
/// @param  wave_number

var game_controller = argument0
var wave_number = argument1

var h = 200

var type = choose("normal", "leaflet", "armour");

var aaa = 0
var daaa = choose(-4, 4)
var xx = random(room_width)
var yy = random_range(-h, 0)
var target = pick_player_ship()
var adir = point_direction(xx, yy, target.x, target.y)
repeat 3 {
    var missile = create_missile(xx + aaa + lengthdir_x(-abs(aaa) * 30, adir), yy + lengthdir_y(-abs(aaa) * 30, adir), true);
    missile.speed = 6
    missile.explosion_radius = 0
    missile.direction = adir
    with component_create(missile, StateTracker) {
        state = game_controller    
    }
    aaa += daaa;
    ++game_controller.enemy_count
}

repeat 1 {
    var xx = random(room_width)
    var yy = random_range(-h, 0)
    var target = pick_object(ColliderTargetable)

    var missile = create_mirv(xx, yy, second(7));
    missile.speed = .5
    missile.direction = point_direction(xx, yy, target.x, target.y)
    with component_create(missile, StateTracker) {
        state = game_controller    
    }
    ++game_controller.enemy_count
}

switch type {
case "normal":
    repeat game_controller.map_enemy_level[?"normal"] {
        var xx = random(room_width)
        var yy = random_range(-h, 0)
        var target = pick_object(ColliderTargetable)
    
        var missile = create_missile(xx, yy, true);
        missile.direction = point_direction(xx, yy, target.x, target.y)
        with component_create(missile, StateTracker) {
            state = game_controller    
        }
        ++game_controller.enemy_count
    }
    game_controller.map_enemy_level[?"normal"] += 4

    break
    
case "leaflet":
    repeat game_controller.map_enemy_level[?"leaflet"] {
        var xx = random(room_width)
        var yy = random_range(-h, 0)
        var target = pick_object(ColliderTargetable)
    
        var missile = create_leaflet_bomb(xx, yy);
        missile.direction = point_direction(xx, yy, target.x, target.y)
        with component_create(missile, StateTracker) {
            state = game_controller    
        }
        ++game_controller.enemy_count
    }
    game_controller.map_enemy_level[?"leaflet"] += 1

    break

case "armour":
    repeat game_controller.map_enemy_level[?"armour"] {
        var xx = random(room_width)
        var yy = random_range(-h, 0)
        var target = pick_object(ColliderTargetable)
    
        var missile = create_armoured_missile(xx, yy);
        missile.direction = point_direction(xx, yy, target.x, target.y)
        with component_create(missile, StateTracker) {
            state = game_controller    
        }
        ++game_controller.enemy_count
    }
    game_controller.map_enemy_level[?"armour"] += 2
    
    break
}







