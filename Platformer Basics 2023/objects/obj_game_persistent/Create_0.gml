global.checkpoint_room = rm_level_1;
global.checkpoint_x = 190;
global.checkpoint_y = 1110;
global.checkpoint_id = noone;
global.target_x = global.checkpoint_x;
global.target_y = global.checkpoint_y;
global.show_fps = false;

//Play Music
if(!audio_is_playing(snd_music)) {
	audio_play_sound(snd_music,1,true)	
}

