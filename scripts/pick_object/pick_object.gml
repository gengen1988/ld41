/// @description  pick_object(object_index)
/// @param object_index

var Object = argument0

return instance_find(Object, irandom(instance_number(Object) - 1))
