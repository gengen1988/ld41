/// @description  ds_list_to_array(list)
/// @param list

var list = argument0
var result = undefined

if !is_undefined(list) && ds_exists(list, ds_type_list) {
    for (var i = 0; i < ds_list_size(list); ++i) {
        result[i] = list[| i]
    }
}

return result
