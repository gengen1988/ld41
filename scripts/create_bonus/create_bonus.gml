/// @description  create_bonus(x, y)
/// @param x
/// @param  y

var bonus = instance_create(argument0, argument1, ColliderBonus);
bonus.depth = -10
bonus.sprite_index = spr_pickup
bonus.direction = random(360)
bonus.max_speed = random(60) / 30
bonus.speed = bonus.max_speed

bonus.state = "appear"
bonus.damage = 0

component_create(bonus, BonusMovement)
component_create(bonus, CollisionHP)

return bonus
