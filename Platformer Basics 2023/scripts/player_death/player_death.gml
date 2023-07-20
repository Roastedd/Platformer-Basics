// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_death(){
	fade_out(global.checkpoint_room,global.checkpoint_x,global.checkpoint_y);
	
	instance_create_layer(x,y,"Instances",obj_explode);
	instance_destroy();
	
}