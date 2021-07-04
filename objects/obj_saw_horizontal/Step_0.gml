var bbox_side;

if (hspeed <= 0) bbox_side = bbox_left;
if (hspeed >= 0) bbox_side = bbox_right;

if (tilemap_get_at_pixel(tilemap, bbox_side + hspeed, bbox_top) != 0 || tilemap_get_at_pixel(tilemap, bbox_side + hspeed, bbox_bottom) != 0)
{
	hspeed *= -1;
	
	repeat(3) instance_create_depth(bbox_side + hspeed, y, depth, obj_part);
}

image_angle -= 8 * sign(hspeed);