if (!instance_exists(obj_coin_timer))
{
	instance_destroy(other);
	global.points++;
	
	repeat (5) instance_create_depth(other.x, other.y, depth, obj_part);
	instance_create_depth(x, y, depth - 1, obj_coin_timer);
	
	audio_play_sound(snd_coin, 1, false);
}