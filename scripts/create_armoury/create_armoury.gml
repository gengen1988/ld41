/// @description  create_armoury(x, y)
/// @param x
/// @param y

var platform = instance_create(argument0, argument1, ColliderBuilding)

platform.sprite_index = spr_platform_armoury

platform.explosion_radius = 30
platform.output = 5

component_create(platform, CollisionHP)
component_create(platform, ExplosionOnDestroy)

return platform
