///@desc Set Animations

//Adjust sprite 
image_speed = 1;

if (hsp != 0) {
	image_xscale = sign(hsp);

}

if (!on_ground) {
	sprite_index = spr_player_air;
	image_speed = 0;
	image_index = (vsp > 0);
} else {
	if (hsp != 0) {
		sprite_index = spr_player_run;	
	} else {
		sprite_index = spr_player_idle;	
	}
}