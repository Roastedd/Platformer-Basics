/// @Desc Update destination
if (instance_exists(follow_object)) { //if follow object is alive
	xTo = follow_object.x;			//follow x
	yTo = follow_object.y;
}

x += (xTo - x) / cam_follow_speed;
y += (yTo - y) / cam_follow_speed;

x = clamp(x, view_w_half + buff, room_width-view_w_half-buff);
y = clamp(y, view_h_half + buff, room_height-view_h_half-buff);

//Screen Shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if (keyboard_check_pressed(192)) {
	if !global.show_fps
	{
		global.show_fps = true;
		//show_debug_overlay(true);
	}
	else
	{
		global.show_fps = false;
		//show_debug_overlay(false);
	}	
}