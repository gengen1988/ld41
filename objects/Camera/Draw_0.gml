__view_set( e__VW.XView, view_current, 0 )
__view_set( e__VW.YView, view_current, 0 )

__view_set( e__VW.XView, view_current, __view_get( e__VW.XView, view_current ) + (random_range(-shake, shake) ))
__view_set( e__VW.YView, view_current, __view_get( e__VW.YView, view_current ) + (random_range(-shake, shake) ))

