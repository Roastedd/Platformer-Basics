if (distance_to_point(mouse_x,mouse_y) <= 0) {
	if (!hover) audio_play_sound(snd_button_hover,1,0);
	hover = true;
	
	if (mouse_check_button_pressed(mb_any)) {
		audio_play_sound(snd_button_click,1,0);
		fade_out(rm_level_1,global.checkpoint_x,global.checkpoint_y);
			
	}
} else {
	hover = false;	
}