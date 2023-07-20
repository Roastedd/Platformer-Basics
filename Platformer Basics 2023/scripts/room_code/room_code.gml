// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_code(){
	
	fade_in();
	
	if (!instance_exists(obj_player)) {
		instance_create_layer(global.checkpoint_x,global.checkpoint_y,"Instances",obj_player)	
	}
	
}