if (place_meeting(x + hsp, y, obj_block)) {
	while (!place_meeting(x + sign(hsp), y, obj_block)) x += sign(hsp);
	
	repeat(3) instance_create_depth(x + sign(hsp) * 8, y, depth, obj_part);
	
	if (!audio_is_playing(snd_bounce))
	{
		var snd = snd_bounce;
		audio_sound_pitch(snd, random_range(0.5, 1.5));
		audio_play_sound(snd, 1, false);
	}
	
	dir *= -1;
	hsp *= -1;
	scale = 0.9;
}
x += hsp;

if (place_meeting(x, y + vsp, obj_block)) {
	while (!place_meeting(x, y + sign(vsp), obj_block)) y += sign(vsp);
	
	repeat(3) instance_create_depth(x, y + sign(vsp) * 8, depth, obj_part);
	
	if (!audio_is_playing(snd_bounce))
	{
		var snd = snd_bounce;
		audio_sound_pitch(snd, random_range(0.5, 1.5));
		audio_play_sound(snd, 1, false);
	}	
	
	vsp *= -0.8;
	scale = 0.9;
}
y += vsp;