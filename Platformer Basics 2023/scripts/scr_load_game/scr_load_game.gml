// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_load_game(){

	if (file_exists("Save.sav")) {
		ini_open("Save.sav");
		global.checkpoint_room	= ini_read_real("Progress","room",rm_level_1);
		global.checkpoint_x = ini_read_real("Progress","x",0);
		global.checkpoint_y = ini_read_real("Progress","y",0);
		
		ini_close();
		fade_out(global.checkpoint_room,global.checkpoint_x,global.checkpoint_y);
	}

}