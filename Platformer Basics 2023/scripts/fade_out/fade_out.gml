///@function fade_out(target room);
///@param (index)	_targetroom
function fade_out(_targetroom){
	
	if (!instance_exists(obj_fade)) {
		var _fade = instance_create_layer(x,y,"Hud",obj_fade); 
		with(_fade) {
			a = 0;
			can_fade_out = true;
			target_room = _targetroom;
		}	
	}
}