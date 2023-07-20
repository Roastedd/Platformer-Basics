if (global.checkpoint_id = id) {
	image_index = 1;
}	else {
	image_index = 0;	
	
	if (place_meeting(x,y,obj_player)) {
		global.checkpoint_room = room; 
		global.checkpoint_x = x;
		global.checkpoint_y = y;
		global.checkpoint_id = id;
		scr_screen_shake(5,20);
		scr_play_sound(snd_checkpoint,3,false);	
	}
}


	if (place_meeting(x,y,obj_player)) {
		text_fade = text_fade_max;

	} else {
		text_fade = max(0,text_fade-1); //reduce by one each frame
	
	
	}
