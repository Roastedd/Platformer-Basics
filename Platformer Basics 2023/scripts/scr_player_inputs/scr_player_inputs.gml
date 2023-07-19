// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_inputs(){
	key_left = keyboard_check(vk_left);
	key_right = keyboard_check(vk_right);
	
	key_jump = keyboard_check_pressed(ord("Z"));
	key_jump_held = keyboard_check(ord("Z"));
	
	
	//Calculate Horizontal Movement
	//get move directions
	var dir = key_right - key_left;
	
	//get horizontal speed
	hsp += dir*accel;
	
	if (dir == 0) { // slow down character if no dir key pressed
		if (hsp < 0) { //left
			hsp = min(hsp + decel,0);
		}
		else { // right
			hsp = max(hsp - decel,0);
		}
	}
	
	hsp = clamp(hsp,-max_hsp,max_hsp);	//set max speed for left or right
	
	//Calculate Vertical Movement
	vsp += grav;
	
	//Ground Jump
	if (jumpbuffer > 0) {
		jumpbuffer --;		//reduces jump buffer by 1 each frame
		if (key_jump) {
			jumpbuffer = 0;	//can't jump again
			vsp = jumpspeed;//jump by using the jumpspeed var
		}
	}
	
	if (vsp < 0) && (!key_jump_held) {
		vsp = max(vsp,-3); //set vsp to higher (less negative) number 
	}
	
	vsp = clamp(vsp,-max_vsp,max_vsp);
	
	
	//horizontal collision
	if (place_meeting(x+hsp,y,obj_block)) {
		var onepixel = sign(hsp);
		while (!place_meeting(x+onepixel,y,obj_block)) x += onepixel;
		hsp = 0;
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
	
	//Calculate if on ground
	on_ground = place_meeting(x,y+groundbuffer,obj_block);
	if (on_ground) {
		jumpbuffer = init_jumpbuffer;	
	}
	
}