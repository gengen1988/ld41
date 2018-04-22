/// @description  create_leaflet_bomb(x, y)
/// @param x
/// @param  y

var r = 100
var master = instance_create(argument0, argument1 - r, GameObject);
master.speed = .8
master.direction = 270 + random(60) - 30

master.angle = random(360)
master.angle_rate = choose(-2, 2)
master.r = r
master.a = 30

var warhead = create_base_enemy(argument0, argument1);
warhead.sprite_index = spr_leaflet
warhead.image_speed = .25
warhead.image_index = irandom(image_number)

master.warhead = warhead
warhead.master = master

component_create(master, WeirdMaster)
component_create(warhead, WeirdWarhead)

var trail_stay_time = second(EFFECT_STAY)
var trailer = create_trailer(warhead, trail_stay_time)
on_destroy(warhead, cmd_create(enable, trailer.lifespanner))

return master
