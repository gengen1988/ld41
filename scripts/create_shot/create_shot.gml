/// @description  create_shot(x, y, speed, direction, lifespan, power)
/// @param x
/// @param  y
/// @param  speed
/// @param  direction
/// @param  lifespan
/// @param  power

var xx = argument0
var yy = argument1
var sspeed = argument2
var ddir = argument3
var llifespan = argument4
var explosion_power = argument5

with instance_create(xx, yy, ColliderPlayerShot) {
    sprite_index = spr_shot_big
    speed = sspeed
    direction = ddir
    
    damage = 2
    explosion_radius = explosion_power
    
    component_create(id, CollisionHP)
    component_create(id, ExplosionOnDestroy)
    
    with component_create(id, ShotDelay) {
        alarm[0] = llifespan
    }
    with component_create(id, ProjectileDrawer) {
        x = other.x
        y = other.y
    }
}
