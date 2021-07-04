depth = -100;
draw_set_color(c_black);

draw_rectangle(0, 0, 256, 15, false);

draw_set_color(c_white);
draw_set_font(fnt);

draw_text(10, 5, "$" + string(global.points));

draw_set_halign(fa_center);
draw_set_valign(fa_center);

if (paused == true)
{
	draw_text(128, 120, "PAUSED");	
}

if (keyboard_check(vk_escape)) draw_text(room_width - 40, 10, "QUITTING");

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_sprite_tiled(spr_scanline, 0, 0, 0);
draw_sprite(spr_screen, 0, 0, 0);