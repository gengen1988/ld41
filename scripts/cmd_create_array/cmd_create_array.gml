/// @description  cmd_create_array(script, args)
/// @param script
/// @param  args

with instance_create(0, 0, Command) {
    script = argument0
    args = argument1
    return id
}

