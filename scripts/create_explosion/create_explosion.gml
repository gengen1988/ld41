/// @description  create_explosion(x, y, r, frame)
/// @param x
/// @param  y
/// @param  r
/// @param  frame

var xx = argument0
var yy = argument1
var rr = argument2
var frame = argument3

var explosion = instance_create(xx, yy, ColliderExplosion);
explosion.invincible = true

audio_stop_sound(sfx_explosion)
audio_play_sound(sfx_explosion, 0, false)
camera_shake(rr * .2)

with component_create(explosion, ExplosionLogic) {
    r = rr
    delta_r = .05
    alarm[0] = frame
}

