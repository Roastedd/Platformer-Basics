
var y_spacing = 15;
var xx = camera_get_view_width(cam)/1.2;
var yy = y_spacing//camera_get_view_height(cam)/2 +y_spacing;

draw_set_font(fnt_default);
draw_set_color(c_white)
if instance_exists(obj_player) {
if global.show_fps == true
	{
		//yy += y_spacing
		//draw_text(xx,yy,display_write_specs(DisplayEnum.gui));
		draw_text(xx, yy, "Real FPS:" + string(fps_real));
		yy += y_spacing
		draw_text(xx, yy, "FPS:" + string(fps))
		yy += y_spacing
		draw_text(xx, yy, "Number of Instances:" + string(instance_count))
		yy += y_spacing
		draw_text(xx, yy, "Grounded:" + string(obj_player.on_ground))
		yy += y_spacing
		draw_text(xx, yy, "Coyote:" + string(obj_player.jumpbuffer))
		yy += y_spacing
		//draw_text(xx, yy, "Death Counter:" + string(global.death_counter))

	}
	
}