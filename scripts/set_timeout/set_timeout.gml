/// @description  set_timeout(cmd, frame)
/// @param cmd
/// @param  frame

var cmd = argument0
var frame = argument1

if !cmd_exists(cmd) {
    show_message("object is not timeout")
    exit
}

if frame < 1 {
    cmd_execute(cmd)
} else {
    with cmd {
        alarm_set(ALARM_EXECUTE, frame)
    }
}

return cmd

