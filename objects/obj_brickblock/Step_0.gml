y += vsp
y = clamp(y, startingy-40,startingy)
vsp += 0.5
if (vsp > 0.5)
{
	image_index = 0
}
if (vsp == 0)
{
	image_index = 1
}
	if !place_meeting(x, y + 1, obj_player)
	{
		grounded = false;
		if (y == startingy)
		{
			vsp = 0
			image_index = 1
		}
	}
	else if !grounded
	{
		if (obj_player.playerstate == 0)
		{
			if (y == startingy)
			{
				image_index = 2
				vsp = -3.5
			}
		}else
		{
			instance_destroy();
		}
	}
