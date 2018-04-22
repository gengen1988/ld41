if !instance_exists(shooter) {
    exit
}

if time == 0 {
    if mouse_check_button(mb_left) {
        with shooter {
            script_execute(shoot_script, other._model)
        }
        ++time
    }
} else {
    time = ++time mod shooter.interval
}

