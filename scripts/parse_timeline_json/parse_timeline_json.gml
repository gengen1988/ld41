/// @description  parse_timeline_json(json_string)
/// @param json_string

// problem: can't set same time on one object
// problem: can't set same time too close (<= 0.016s)
// problem: timeline must in order

var FIELDNAME_OBJECT = "object"
var FIELDNAME_TIMELINE = "timeline"
var FIELDNAME_BEGIN_AT = "beginAt"
var FIELDNAME_SCRIPT = "script"
var FIELDNAME_ARGS = "args"

// var FIELDNAME_END_AT = "endAt"

var json_object = json_decode(argument0)    // defer ds_map_destroy(json_object)
var json_array = json_object[? "default"]

var objects = undefined

for (var i = 0; i < ds_list_size(json_array); ++i) {
    var object_info = json_array[| i]
    var timeline_info = object_info[? FIELDNAME_TIMELINE]
    
    // ds_list_sort(timeline_info, true)
    
    // create object
    var Object = get_object_by_name(object_info[? FIELDNAME_OBJECT])
    with instance_create(0, 0, Object) {
        var timeline = timeline_add()
        // timeline moment tracking
        _base_current_timeline_moment = 0
        
        // parse timeline
        for (var j = 0; j < ds_list_size(timeline_info); ++j) {
            var event_info = timeline_info[| j]
            var dslist_args = event_info[? FIELDNAME_ARGS]
            var begin_at = event_info[? FIELDNAME_BEGIN_AT]
            var script = event_info[? FIELDNAME_SCRIPT];
            
            // store event
            _base_timeline_script[j] = get_script_by_name(script)
            _base_timeline_arguments[j] = list_to_array(dslist_args)
            
            // add moment to timeline
            timeline_moment_add_script(timeline, second(begin_at), trigger_timeline_moment)
        }
        
        timeline_index = timeline
        timeline_running = true
        objects[i] = id
    }
}

ds_map_destroy(json_object)

return objects      // array of Objects
