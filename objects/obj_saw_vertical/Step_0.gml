var bbox_side;

if (hspeed <= 0) bbox_side = bbox_top;
if (hspeed >= 0) bbox_side = bbox_bottom;

if (tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + sign(vspeed)) != 0 || tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + sign(vspeed)) != 0)
{
	vspeed *= -1;
	
	repeat(3) instance_create_depth(x, bbox_side + vspeed, depth, obj_part);
}

image_angle -= 8 * sign(vspeed);