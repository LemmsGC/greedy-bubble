function scr_new_game()
{
	if (file_exists("save.sav")) file_delete("save.sav");
	ini_open("save.sav");
	
	var level = rm_puzzle1;
	ini_write_real("Core", "Level", level);
	ini_write_real("Core", "Cash", 0);
	
	ini_close();
}