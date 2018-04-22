for (var i = 0; i < ds_list_size(dsl_components); ++i) {
    instance_destroy(dsl_components[| i])
}
ds_list_destroy(dsl_components)

