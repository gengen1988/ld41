/// @description  create_waterline(y)
/// @param y

var waterline = instance_create(0, argument0, ColliderScene);

waterline.invinciable = true
waterline.damage = 0

//component_create(waterline, WaterlineDrawer)
component_create(waterline, WaterlineCollision)

