/// @description  remove_observer(observable, observer)
/// @param observable
/// @param  observer

var observable = argument0
var observer = argument1

var index = ds_list_find_index(observable.list_observer, observer)
ds_list_delete(observable.list_observer, index)

