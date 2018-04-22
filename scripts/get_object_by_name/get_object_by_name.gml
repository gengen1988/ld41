/// @description  get_object_by_name(str)
/// @param str

if asset_get_type(argument0) != asset_object {
    return -1
}
return asset_get_index(argument0)
