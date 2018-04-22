if gameOver {
	exit
}

switch state {
case "playing":
    if enemy_count <= 0 {
        state_change.state = "building"
        notify(state_change)
        audio_sound_pitch(global.bgm, .5)
		
		with ColliderBuilding {
			global.ammo += output
		}
    
        state = "building"
        show_banner(banner_2)
    }
    break;
    
case "building":
    if next_wave {
        state_change.state = "playing"
        notify(state_change)
        audio_sound_pitch(global.bgm, 1)
        
        show_banner(banner_1)
        next_wave = false
        //++wave_number
        state = "playing"
        generate_wave(id, wave_number)
    }
    break;
}

