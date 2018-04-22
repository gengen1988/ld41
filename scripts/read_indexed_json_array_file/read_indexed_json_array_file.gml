/// @description  read_indexed_json_array_file(filepath)
/// @param filepath

var filepath = argument0

var map_data = read_json_file(filepath)
var list_data = map_data[? "default"]
var map_indexed_list = ds_map_create()

for (var i = 0; i < ds_list_size(list_data); ++i) {
    var map_item = list_data[| i]
    var index = map_item[? "index"]
    var map_copied = ds_map_create()
    ds_map_copy(map_copied, map_item)
    ds_map_add_map(map_indexed_list, index, map_copied)
}

ds_map_destroy(map_data)

return map_indexed_list

