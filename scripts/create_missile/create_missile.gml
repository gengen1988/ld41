/// @description  create_missile(x, y, has_trailer)
/// @param x
/// @param  y
/// @param  has_trailer

var missile = create_base_enemy(argument0, argument1);

missile.sprite_index = spr_missile
missile.image_speed = 0
missile.image_index = 0
missile.speed = .8
missile.direction = 270

//missile.bonus = 2
missile.name = "missile"

// trailer
if argument2 {
    missile.image_speed = 30 / second(1)
    missile.image_index = irandom(1)
    var trail_stay_time = second(EFFECT_STAY)
    var trailer = create_trailer(missile, trail_stay_time)
    on_destroy(missile, cmd_create(enable, trailer.lifespanner))
}

// missile
component_create(missile, AngleMatchDirection)

return missile

