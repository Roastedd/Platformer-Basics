hsp = 0;		//horizontal speed
max_hsp = 5;	//max horizontal speed
vsp = 0;		//vertical speed
grav = 0.6;
max_vsp = 18;	//maximum vertical speed, increase to jump higher

// Player Inputs
key_left = 0;	//left key var
key_right = 0;	//right key var
key_jump = 0;	//jump key var
key_jump_held = 0;
key_attack = 0;

//Attack
attack_cooldown = 0;
attack_max = 20; //number of frames till next attack

//jumping 
on_ground = false;
groundbuffer = 3;	//lets player jump if at least 3 pixels close to ground
jumpspeed = -13;	// set jump height
jumpbuffer = 6;		// jump counter
init_jumpbuffer = 10;//frames after leaving ground when we can still jump

//Wall Jump
on_wall = false;
grav_wall = 0.1;	//set gravity on wall
hsp_wall_jump = 6;	//max hsp jumping away from wall
jumpspeed_wall = -9;//set how high to jump during wall jump
max_vsp_wall = 5;	//max vsp on wall 
wall_jump_delay = 0;
wall_jump_delay_max = 20;

//momentum
accel = 0.5;	//how fast to accelerate to max hsp
decel = 0.6;	//how fast to slow down to 0 hsp

animation_init();

