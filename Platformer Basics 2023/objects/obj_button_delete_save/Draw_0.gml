draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_buttons);

var _text = "Delete Save";
if(!hover) {
	draw_set_color(c_aqua);
	draw_rectangle(x1,y1,x2,y2,true);
	draw_text(x,y,_text);
} else {
	draw_set_color(c_aqua);
	draw_rectangle(x1,y1,x2,y2,false);
	draw_set_color(c_black);
	draw_text(x,y,_text);
}