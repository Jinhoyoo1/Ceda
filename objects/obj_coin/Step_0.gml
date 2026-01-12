if (place_meeting(x,y,obj_player))
{
	instance_create_depth(x-5,y-6,depth-30,obj_twinkler)
	instance_destroy()
}
sine++
image_angle = sin(sine * 0.115) *19