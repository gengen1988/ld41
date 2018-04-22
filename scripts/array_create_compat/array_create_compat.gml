/// @description  array_create_compat(size, [value])
/// @param size
/// @param  [value]

switch argument_count {
case 1:
    return array_create(argument[0])
case 2:
    var array = undefined
    for (var i = 0; i < argument[0]; ++i) {
        array[i] = argument[1]
    }
    return array
case 3:
    return undefined
}
