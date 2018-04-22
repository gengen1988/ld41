var vh = __view_get( e__VW.HView, view_current )
var vw = __view_get( e__VW.WView, view_current );

__view_set( e__VW.XView, view_current, _model.x - vh / 2 )
__view_set( e__VW.YView, view_current, _model.y - vw / 2 )


