/// @description  component_create(model_id, component_index)
/// @param model_id
/// @param  component_index

with instance_create(0, 0, argument1) {
    _model = argument0
    with argument0 {
        ds_list_add(dsl_components, other.id)
    }
    return id
}

