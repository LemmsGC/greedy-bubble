if (paused == true) instance_deactivate_all(true);
else instance_activate_all();

if (instance_number(obj_coin) <= 0 && instance_exists(obj_bubble) && room != rm_menu && room != rm_game_over) 
{
	obj_bubble.can_move = false;
	if (alarm[0] == -1)
	{
		if (audio_is_playing(snd_coin)) audio_stop_sound(snd_coin);
		audio_play_sound(snd_finish, 1, false);
		alarm[0] = room_speed * 2;
	}
}

if (keyboard_check_pressed(vk_f1))
{
	if (window_get_fullscreen() == false) window_set_fullscreen(true);
	else window_set_fullscreen(false);
}

if (keyboard_check(vk_escape)) esc_time++;
else esc_time = 0;

if (esc_time >= 30) game_end();

