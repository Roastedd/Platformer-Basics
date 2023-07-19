hsp = 0;		//horizontal speed
max_hsp = 5;	//max horizontal speed
vsp = 0;		//vertical speed
grav = 0.5;
max_vsp = 12;	//maximum vertical speed, increase to jump higher

// Player Inputs
key_left = 0;	//left key var
key_right = 0;	//right key var
key_jump = 0;	//jump key var
key_jump_held = 0;

//jumping 
on_ground = false;
groundbuffer = 3;	//lets player jump if at least 3 pixels close to ground
jumpspeed = -12;	// set jump height
jumpbuffer = 6;		// jump counter
init_jumpbuffer = 10;//frames after leaving ground when we can still jump

//momentum
accel = 0.5;	//how fast to accelerate to max hsp
decel = 0.6;	//how fast to slow down to 0 hsp


