var difficulty = global.difficulty;

_model.shot_speed = 1 + difficulty * .01
_model.interval = clamp(2 - difficulty * .01, .1, 2)


