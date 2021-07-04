camera_set_view_border(view_camera[0], (640 - 256) / 2,  (360 - 240) / 2);
surface_resize(application_surface, 256, 240);
global.points = 0;

paused = false;
tilemap = layer_tilemap_get_id("TileMap");

esc_time = 0;