

//calculate horizontal movement
hsp = facing *hsp_max;

//calculate vertical movement
vsp += grav;
vsp = clamp(vsp, -vsp_max,vsp_max);

scr_collision_enemy();

if place_meeting(x,y,obj_weapon) {
	instance_create_layer(x,y,"Instances",obj_explode);
	instance_destroy();	
}