y += vsp
vsp += 0.52
image_angle += 5.5
if (place_meeting(x,y+3.1,obj_solid))
{
	instance_create_depth(x-5,y-6,depth,obj_twinkler)
	instance_destroy()
}