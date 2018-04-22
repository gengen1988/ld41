switch other.state {
case "playing":
    set_menu_enabled(id, false)
    break
    
case "building":
    set_menu_enabled(id, true)
    break
}

