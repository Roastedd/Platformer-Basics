if (distance_to_point(mouse_x,mouse_y) <= 0) {
	if (!hover) audio_play_sound(snd_button_hover,1,0);
	hover = true;
	
	if (mouse_check_button_pressed(mb_any)) {
		audio_play_sound(snd_button_click,1,0);
		if (file_exists("Save.sav")) {
			file_delete("Save.sav");
		} 
		scr_init();
		instance_destroy();
	}
} else {
	hover = false;	
}