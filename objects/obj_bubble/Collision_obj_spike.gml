if (can_move) 
{
	repeat(8) instance_create_depth(x, y, depth, obj_part);

	x = xstart;
	y = ystart;

	scale = 0;

	grv = -0.05;
	spd = 0.7;
	
	dir = 1;

	can_move = false;
	if (alarm[0] == -1) alarm[0] = room_speed;

	if (global.points > 0) global.points--;
	instance_create_depth(x, y - 16, -100, obj_cash_loose);
}