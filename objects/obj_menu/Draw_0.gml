draw_set_font(fnt);

for (var i = 0; i < 3; i++)
{
	draw_text(48, 128 + 12 * i, menu[i]);	
}
draw_rectangle(40, 129 + mpos * 12, 44, 129 + mpos * 12 + 4, false);