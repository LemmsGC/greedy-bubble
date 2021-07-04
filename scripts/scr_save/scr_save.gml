function scr_save()
{
	if (file_exists("save.sav")) file_delete("save.sav");
	ini_open("save.sav");
	
	var level = room;
	ini_write_real("Core", "Level", level);
	ini_write_real("Core", "Cash", global.points);
	
	ini_close();
}