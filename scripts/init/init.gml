/// @description  init()

randomize()
draw_set_color(c_white)

global.bgm = audio_play_sound(bgm_play, 0, true)
global.gold = 100
global.ammo = 20

var waterline_y = rh(.66)
var player_x = rw(0)
var player_y = waterline_y
var enemy_x = rw(0)
var enemy_y = rw(-1)

var pt = "1"

var game_controller = create_game_controller()
var mouse_controller = create_mouse_controller(game_controller)

var _player = create_player(player_x, player_y, pt);
_player.mouse_controller = mouse_controller

var waterline = create_waterline(waterline_y);
mouse_controller.waterline = waterline

// ui
var menu = create_menu(700, 200, game_controller);
var next_button = create_next_button(700, 440, game_controller);

menu.mouse_controller = mouse_controller

for (var i = 0; i < ds_list_size(menu.list_menu_item); ++i) {
    var item = menu.list_menu_item[| i];
    item.mouse_controller = mouse_controller
}

global.camera = create_camera()
//component_create(_player, CameraFollow)

with instance_create(0, 0, GameOverDetector) {
    player = _player
    command = cmd_create(gameover)
}

game_over_track(create_house(rw(-.3), waterline_y))
game_over_track(create_armoury(rw(.3), waterline_y))

/*
var content = read_file("timeline.json")
var timelines = parse_timeline_json(content)
for (var i = 0; i < array_length_1d(timelines); ++i) {
    timelines[i].player = player
}
*/
