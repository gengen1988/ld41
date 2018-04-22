/// @description  create_missile_generator(player)
/// @param player

var generator = instance_create(0, 0, GameObject);
generator.interval = 10
generator.shot_speed = 1
generator.shot_count = 1

with component_create(generator, RandomMissileGenerate) {
    player = argument0
    alarm_set(ALARM_GENERATE, 1)
}
//component_create(generator, DifficultyModify)
