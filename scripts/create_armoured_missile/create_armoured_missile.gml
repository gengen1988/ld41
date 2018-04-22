/// @description  create_armoured_missile(x, y)
/// @param x
/// @param  y

var missile = create_missile(argument0, argument1, true);

missile.name = "armoured"
missile.hp = 2
missile.speed = .5
missile.trailer.color = c_red
missile.sound_on_hit = sfx_hit

component_create(missile, MissileHPIndicator)

return missile

