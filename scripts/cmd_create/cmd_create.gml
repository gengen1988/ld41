/// @description  cmd_create(script, arg0, arg1, arg2, ...)
/// @param script
/// @param  arg0
/// @param  arg1
/// @param  arg2
/// @param  ...

var args = undefined

for (var i = 1; i < argument_count; ++i) {
    args[i - 1] = argument[i]
}

return cmd_create_array(argument[0], args)
