view_wport[0] = 640;
view_hport[0] = 360;

if (room != rm_menu) 
{
	scr_save();
	if (!audio_is_playing(snd_music1)) audio_play_sound(snd_music1, 1, true);
}

tilemap = layer_tilemap_get_id("TileMap");


for (var i = 0; i < 256 / 16; i++) {
	for (var j = 0; j < 240 / 16; j++) {
		if (tilemap_get_at_pixel(tilemap, i * 16, j * 16)) instance_create_depth(i * 16, j * 16, 0, obj_block);
	}
}