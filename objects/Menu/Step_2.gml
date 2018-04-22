var item_height = 50

for (var i = 0; i < ds_list_size(list_menu_item); ++i) {
    var item = list_menu_item[| i];
    
    item.x = x
    item.y = y + item_height * i
}


