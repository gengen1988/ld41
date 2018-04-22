/// @description  gameover()

audio_play_sound(sfx_lose, 0, false)

with instance_create(rw(0), rh(0), GameObject) {
    sprite_index = spr_gameover
    component_create(id, GameRestarter)
}
