// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_death(){
	
	if (!file_exists("Save.sav")) {
		fade_out(global.checkpoint_room,global.checkpoint_x,global.checkpoint_y);
	} else {
		scr_load_game();	
	}
	
	instance_create_layer(x,y,"Instances",obj_explode);
	scr_screen_shake(12,50)
	scr_play_sound(snd_death,1,false);
	instance_destroy();
	
}