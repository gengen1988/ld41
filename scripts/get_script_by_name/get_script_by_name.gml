/// @description  get_script_by_name(str)
/// @param str

if asset_get_type(argument0) != asset_script {
    return -1
}
return asset_get_index(argument0)
