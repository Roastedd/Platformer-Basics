function scr_16_auto() {
	BS = sprite_width; // Base Size
	image_speed = 0;

	WR = position_meeting(x + BS,y,obj_block);
	WL = position_meeting(x - BS,y,obj_block);
	WU = position_meeting(x,y - BS,obj_block);
	WD = position_meeting(x,y + BS,obj_block);

	WSU = position_meeting(x,y-BS,obj_parent_slope);
	WSL = position_meeting(x - BS,y,obj_parent_slope);
	WSR = position_meeting(x + BS,y,obj_parent_slope);

	if (!WL && !WU && WD && WR) {
		image_index = 0;
	} else if (WR && WL && !WU && WD) {
		image_index = 1;
	} else if (WL && WD && !WR && !WU) {
		image_index = 2;
	} else if (WL && !WR && WU && WD) {
		image_index = 3;
	} else if (WL && !WR && WU && !WD) {
		image_index = 4;
	} else if (WL && WR && WU && !WD) {
		image_index = 5;
	} else if (!WL && WR & WU && !WD) {
		image_index = 6;
	} else if (!WL && WD && WR && WU) {
		image_index = 7;
	} else if (WL && WR && WU && WD) {
		if random(100) < 1 {
			//sprite_index = sprMidBlock;
		}
		else {
			image_index = 8;	
		}
	}

	if (WSL && !WL && !WU && WSR && !WR && WD) {
		image_index = 1;
	}


	if (!WL && !WR && !WU && WD) {
		image_index = 12;
	} else if (!WL && !WR && WU && WD) {
		image_index = 13;
	} else if (!WL && !WR && WU && !WD) {
		image_index = 14;
	} else if (WL && WR && !WU && !WD) {
		image_index = 10;
	} else if (!WL && WR && !WU && !WD) {
		image_index = 9;
	} else if (WL && !WR && !WU && !WD) {
		image_index = 11;
	} 






}
