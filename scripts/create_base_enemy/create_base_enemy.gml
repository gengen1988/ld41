/// @description  create_base_enemy(x, y)
/// @param x
/// @param  y

var enemy = instance_create(argument0, argument1, ColliderEnemy);

enemy.name = "base_enemy"
enemy.bonus = 10
enemy.hp = 1
enemy.explosion_radius = EXPLOSION_RADIUS

component_create(enemy, CollisionHP)
component_create(enemy, CollisionWaterline)
component_create(enemy, ExplosionOnDestroy)
component_create(enemy, BonusDrop)

return enemy
