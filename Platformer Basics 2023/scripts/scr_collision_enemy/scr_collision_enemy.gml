// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collision_enemy(){
	//horizontal collision
	if (place_meeting(x+hsp,y,obj_block)) {
		var onepixel = sign(hsp);
		while (!place_meeting(x+onepixel,y,obj_block)) x += onepixel;
		hsp = 0;
		facing *=-1; //changes direction	
	
		
	}
	
	// commit horizontal movement
	x += hsp;
	
	//vertical collision
	if (place_meeting(x,y+vsp,obj_block)) {
		var onepixel = sign(vsp);
		while (!place_meeting(x,y+onepixel,obj_block)) y += onepixel;
		vsp = 0;
	}
	
	// commit vertical movement
	y += vsp;
	
	
}