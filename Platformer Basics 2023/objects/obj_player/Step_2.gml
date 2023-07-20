///@desc Set Animations

//Adjust sprite 
frameSpeed = 0.2;

	xScale = approach(xScale, 1, 0.035);
	yScale = approach(yScale, 1, 0.035);


	xPos = x;
	yPos = y;

if (hsp > 0) {
	facing = 1;	
} else if (hsp < 0) {
	facing = -1;	
}

if (!on_ground) {
	if (on_wall != 0) {
		sprite = spr_player_wall;
		facing = on_wall; // left wall -1, on right 1
	} else { 
		sprite = spr_player_air;
		frameSpeed = 0;
		frame = (vsp > 0);
	}
} else {
	if (hsp != 0) {
		frameSpeed = abs(hsp) * 0.08;
		sprite = spr_player_run;	
	} else {
		sprite = spr_player_idle;	
	}
}