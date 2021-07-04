var key = keyboard_check(ord("Z")) || mouse_check_button(mb_left);
if (key && can_move == false)
{
	if (instance_exists(obj_coin))
	{
		hsp = dir;
		can_move = true;
	}
}

if (can_move == true)
{
	vsp += grv;

	if (key) vsp = spd;
}
else
{
	hsp = lerp(hsp, 0, 0.2);
	vsp = lerp(vsp, 0, 0.2);
}

if (instance_number(obj_bubble) > 1) instance_destroy();

if (instance_exists(obj_gravity))
{
	var g = instance_place(x, y, obj_gravity);
	if (g && g.image_alpha >= 1)
	{
		grv *= -1;
		spd *= -1;
		
		g.image_alpha = 0.5;
		obj_gravity.image_yscale *= -1;
	}
}

var w = instance_place(x, y, obj_web);
if (w) {
	if (!web) {
		can_move = false;
		w.scale = 1.1;
	}
	
	web = true;
} else {
	web = false;	
}

var air = instance_place(x, y, obj_air);

if (air) {
	hsp = lengthdir_x(1, air.image_angle);	
	vsp = lengthdir_y(1, air.image_angle);	
} else {
	if (!w && can_move) hsp = dir;
}