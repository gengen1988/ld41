/// @description  create_enemy_shot(x, y)
/// @param x
/// @param  y

var shot = instance_create(argument0, argument1, ColliderEnemy);
shot.sprite_index = spr_missile
shot.image_speed = 0
shot.direction = 270

component_create(shot, AngleMatchDirection)

return shot
