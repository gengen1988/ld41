/// @description  create_bomb(x, y)
/// @param x
/// @param  y

var bomb = create_base_enemy(argument0, argument1);
bomb.gravity = .01
bomb.sprite_index = spr_missile
bomb.image_speed = 0

component_create(bomb, AngleMatchDirection)

return bomb
