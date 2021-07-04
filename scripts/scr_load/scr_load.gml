function scr_load()
{
	if (file_exists("save.sav")) {
		ini_open("save.sav");
		
		var cash = ini_read_real("Core", "Cash", 0);
		global.points = cash;
		
		var level = ini_read_real("Core", "Level", rm_puzzle1);
		room_goto(level);
	}
}