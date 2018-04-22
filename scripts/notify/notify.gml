/// @description  notify(observable)
/// @param observable

with argument0 {
    for (var i = 0; i < ds_list_size(list_observer); ++i) {
        with list_observer[| i] {
            event_user(0)
        }
    }
}

