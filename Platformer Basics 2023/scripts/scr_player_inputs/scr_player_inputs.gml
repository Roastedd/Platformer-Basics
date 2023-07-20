// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_inputs(){
	
	if (!instance_exists(obj_fade)) {
		
		key_left = keyboard_check(vk_left);
		key_right = keyboard_check(vk_right);
	
		key_jump = keyboard_check_pressed(ord("Z"));
		key_jump_held = keyboard_check(ord("Z"));
	
		key_attack = keyboard_check_pressed(ord("X"));
	
	} else {
		key_left = 0;
		key_right = 0;
	
		key_jump =0;
		key_jump_held = 0;
	
		key_attack = 0;
	}
	//Calculate Horizontal Movement
	
	//reduce wall jump delay
	wall_jump_delay = max(wall_jump_delay - 1,0);
	if (wall_jump_delay == 0) { //unable to walljump until counter is 0
			
	
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
	
		//Wall Jump
		if (on_wall != 0) && (!on_ground) && (key_jump) {
			wall_jump_delay = wall_jump_delay_max; // jumped wall
			//change hsp to be opposite of wall
			hsp = -on_wall * hsp_wall_jump;
			//change vsp to jump vertically
			vsp = jumpspeed_wall;
			scr_play_sound(snd_jump,2,false);
		}
	}
	
	//Calculate Vertical Movement
	
	//Gravity
	var grav_final = grav;
	var vsp_max_final = max_vsp;
	if (on_wall != 0) && (vsp > 0) {
		grav_final = grav_wall;
		vsp_max_final = max_vsp_wall;
		
	}	
	vsp += grav_final;
	vsp = clamp(vsp,-vsp_max_final,vsp_max_final);
	
	//Ground Jump
	if (jumpbuffer > 0) {
		jumpbuffer --;		//reduces jump buffer by 1 each frame
		if (key_jump) {
			
			jumpbuffer = 0;	//can't jump again
			vsp = jumpspeed;//jump by using the jumpspeed var
			scr_play_sound(snd_jump,2,false);
		}
	}
	
	if (vsp < 0) && (!key_jump_held) {
		vsp = max(vsp,-3); //set vsp to higher (less negative) number 
	}
	
	
	
	
	
	
}