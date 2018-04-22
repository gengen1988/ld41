/// @description  fire_shot(_model, weapon_data)
/// @param _model
/// @param  weapon_data

var _model = argument0
var weapon_data = argument1

if !instance_exists(_model) {
    exit
}

var shot_speed = weapon_data[? "shot_speed"]
var shot_lifespan = weapon_data[? "shot_lifespan"]
var shot_sprite = asset_get_index(weapon_data[? "shot_sprite"])
var shot_damage = weapon_data[? "shot_damage"]
var explosion_radius = weapon_data[? "explosion_radius"]
var tracking_cursor = weapon_data[? "tracking_cursor"]
var fire_sound = asset_get_index(weapon_data[? "fire_sound"])

// direction
var shot_direction = 90
if !tracking_cursor {
    var shot_direction = point_direction(_model.x, _model.y, mouse_x, mouse_y)
}

// lifespan
if shot_lifespan == 0 {
    var shot_lifespan = point_distance(_model.x, _model.y, mouse_x, mouse_y) / shot_speed / second(1)
}

audio_play_sound(fire_sound, 0, false)
var shot = instance_create(_model.x, _model.y, ColliderPlayerShot);
shot.sprite_index = shot_sprite
shot.speed = shot_speed
shot.direction = shot_direction

shot.damage = shot_damage
component_create(shot, CollisionHP)

if explosion_radius > 0 {
    shot.explosion_radius = explosion_radius
    component_create(shot, ExplosionOnDestroy)
}

if tracking_cursor {
    shot.color = c_white
    component_create(shot, DirectionMouse)
    component_create(shot, AngleMatchDirection)
    component_create(shot, TrailDrawer)
}

with component_create(shot, ShotDelay) {
    alarm[0] = second(shot_lifespan)
}

