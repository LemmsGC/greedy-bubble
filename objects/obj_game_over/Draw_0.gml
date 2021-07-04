draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_text(128, yy, "COINS COLLECTED: " + string(global.points));
yy = lerp(yy, 55, 0.2);

draw_set_halign(fa_left);
draw_set_valign(fa_top);