// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_current_status(){
	//Calculate if on ground
	on_ground = place_meeting(x,y+groundbuffer,obj_block);
	if (on_ground) {
		jumpbuffer = init_jumpbuffer;	
	}
	
	on_wall = place_meeting(x+1,y,obj_block) - place_meeting(x-1,y,obj_block);	
}