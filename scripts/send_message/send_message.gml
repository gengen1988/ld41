/// @description  send_message(game_object, event_name, arg0, arg1, arg2, ...)
/// @param game_object
/// @param  event_name
/// @param  arg0
/// @param  arg1
/// @param  arg2
/// @param  ...

var game_object = argument[0]
var event_name = argument[1]

var args = undefined
for (var i = 2; i < argument_count; ++i) {
    args[i - 2] = argument[i]
}

with game_object {
    for (var i = 0; i < ds_list_size(dsl_components); ++i) {
        with dsl_components[| i] {
            _event_name = event_name
            _event_args = args
            event_user(EVENT_RECEIVE_MESSAGE)
            _event_name = undefined
            _event_args = undefined
        }
    }
}

