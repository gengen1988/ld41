/// @description  create_fire(x, y)
/// @param x
/// @param  y

var fire = instance_create(argument0, argument1, ColliderEnemy);

fire.invincible = true
fire.sprite_index = spr_fire

com_lifespan(fire, second(5))
component_create(fire, FireParticle)

return fire
