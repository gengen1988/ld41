/// @description  create_house(x, y)
/// @param x
/// @param y

var platform = instance_create(argument0, argument1, ColliderPlayerBuilding)

platform.sprite_index = spr_platform_house

platform.explosion_radius = 30
platform.output = 0

component_create(platform, CollisionHP)
component_create(platform, ExplosionOnDestroy)

return platform
