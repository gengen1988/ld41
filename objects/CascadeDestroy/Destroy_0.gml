for (var i = 0; i < ds_list_size(dsl_children); ++i) {
    with dsl_children[| i] {
        instance_destroy()
    }
}

ds_list_destroy(dsl_children)

