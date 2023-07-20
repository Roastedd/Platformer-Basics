
//Text
if (place_meeting(x,y,obj_player)) {
	if (text_fade == 0) {
		scr_play_sound(snd_checkpoint,2,false);	
	}
	text_fade = text_fade_max;

} else {
	text_fade = max(0,text_fade-1); //reduce by one each frame
	
}
