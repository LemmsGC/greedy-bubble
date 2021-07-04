if (keyboard_check_pressed(vk_down)) mpos++;
if (keyboard_check_pressed(vk_up)) mpos--;

mpos = clamp(mpos, 0, array_length(menu) -1);

if (keyboard_check_pressed(vk_enter))
{
	switch (mpos)
	{
		case 0:
			scr_new_game();
			scr_load();
			break;
		case 1:
			scr_load();
			break;
		case 2:
			game_end();
			break;
	}
}