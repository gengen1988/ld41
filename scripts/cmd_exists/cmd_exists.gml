/// @description  cmd_exists(cmd)
/// @param cmd

if instance_exists(argument0) {
    return argument0.object_index == Command
}

return false
