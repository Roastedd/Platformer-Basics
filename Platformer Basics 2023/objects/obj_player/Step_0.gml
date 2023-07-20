
// Keeps frames going
frame += frameSpeed;

// Get inputs
scr_player_inputs();

//Attack

if (attack_cooldown > 0) {
	attack_cooldown = max(0,attack_cooldown-1);	
} else {
	if (key_attack) {
		attack_cooldown = attack_max;
		instance_create_layer(x,y,"Weapon",obj_weapon);
		scr_play_sound(snd_attack,2,false);
	}	
}

// Set Collisions 
scr_collision();
scr_current_status();

//Enemies
if (place_meeting(x,y,obj_can_hurt)) {
	player_death();
}