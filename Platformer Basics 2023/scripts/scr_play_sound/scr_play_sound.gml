///@desc scr_play_sound(sound,priority,loop)
function scr_play_sound(_sound,_priority,_loop){
	if(!audio_is_playing(_sound)) {
		audio_play_sound(_sound,_priority,_loop)	
	}
}