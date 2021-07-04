if (place_meeting(x, y, obj_bubble) && can_teleport) {
	obj_bubble.x = obj_portal1.x;
	obj_bubble.y = obj_portal1.y;
	
	with (obj_portal1) {
		can_teleport = false;
		alarm[0] = 15;
	}
	
	can_teleport = false;
	alarm[0] = 15;
}

sine++;
vspeed = dsin(sine) / 15;