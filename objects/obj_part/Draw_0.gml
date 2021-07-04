draw_set_color(c_white);
draw_circle(x, y, r, false);

r -= 0.3;
if (r  <= 0) instance_destroy();