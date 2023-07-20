// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_code(){
	
	fade_in();
	
	//Play Music
	if(!audio_is_playing(snd_music)) {
		audio_play_sound(snd_music,1,true)	
	}

	
	if (!instance_exists(obj_player)) {
		instance_create_layer(global.target_x,global.target_y,"Instances",obj_player)	
	}
	
	if (!instance_exists(obj_camera)) {
		instance_create_layer(global.target_x,global.target_y,"Instances",obj_camera);	
	}
	
}