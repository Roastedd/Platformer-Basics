if (can_fade_out) {	//fade out from clear to black
	if (a < 1) {
		a += fade_out_rate	// turn black
	} else {
		a = 1;	//set to 100% black
		room_goto(target_room);
	}
} else {	//fade in from black to clear
	if (a > 0) {
		a -= fade_in_rate; // make clear
	}	else {
		a = 0;
		instance_destroy();	
	}	
}