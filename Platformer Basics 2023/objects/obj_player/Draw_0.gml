event_inherited();
draw_sprite_ext(sprite, frame, x, y, xScale *facing, yScale, angle, color, image_alpha);

draw_set_color(c_aqua)
var xx = x;
var y_spacing = 20;
var yy = y - sprite_height *1.2;
if global.show_fps {
	draw_text(xx,yy,"Sprite:" + string(sprite_get_name(sprite)));
	yy -= y_spacing
	draw_text(xx,yy,"Frame:" + string(frame));
	yy -= y_spacing
	draw_text(xx,yy,"Angle:" + string(angle));
	yy -= y_spacing
	draw_text(xx,yy,"Facing:" + string(facing));
	//yy -= y_spacing
	//draw_text(x-(sprite_width),yy,"State:" + string(state));
	yy -= y_spacing
	draw_text(xx,yy,"Hsp:" + string(hsp));
	yy -= y_spacing
	draw_text(xx,yy,"Vsp:" + string(vsp));
	yy -= y_spacing
	//draw_text(x-(sprite_width),yy,"Anticipation:" + string(check_frames));
	draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);
}

draw_set_color(c_white);