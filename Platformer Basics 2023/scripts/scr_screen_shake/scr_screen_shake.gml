/// @desc	screenshake(magnitude, frame)
///@param	{magnitude}	magnitude	sets the strength
///@param	{frames}	frames	how many frames the shake should last
function scr_screen_shake(_magnitude,_frames){
	with(obj_camera) {
		if(_magnitude > shake_remain) {
			shake_magnitude = _magnitude;
			shake_remain = _magnitude;
			shake_length = _frames;
		}
	}
}