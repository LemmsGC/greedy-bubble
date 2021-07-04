image_xscale -= 0.01;
image_angle--;

if (image_xscale <= 0) instance_destroy();

image_yscale =  image_xscale;

if (instance_exists(obj_bubble)) 
{
	x = obj_bubble.x;
	y = obj_bubble.y;
}