///@function fade_out(target room);
///@param (index)		_targetroom
///@param (integer)		_target_x
///@param (integer)		_target_y
function fade_out(_targetroom,_target_x,_target_y){
	
	global.target_x = _target_x;
	global.target_y = _target_y;
	if (!instance_exists(obj_fade)) {
		var _fade = instance_create_layer(x,y,"Hud",obj_fade); 
		with(_fade) {
			a = 0;
			can_fade_out = true;
			target_room = _targetroom;
		}	
	}
}