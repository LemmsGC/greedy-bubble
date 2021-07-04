repeat(8) instance_create_depth(x, y, depth, obj_part);

x = xstart;
y = ystart;

scale = 0;

can_move = false;
if (alarm[0] == -1) alarm[0] = room_speed;