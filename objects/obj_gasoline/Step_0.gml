if (shit != 0)
{
	y-= 1
	shit --
}
y += yvel
if (place_meeting(x,y,obj_solid)) && (shit == 0)
{
	while (place_meeting(x,y,obj_solid))
	{
		y--
		yvel = 0
	}
}
if (scr_solid_slope(x,y)) && (shit == 0)
{
	while (scr_solid_slope(x,y))
	{
		y--
		yvel = 0
	}
}
if (shit == 0)
{
	if (!place_meeting(x,y+1,obj_solid))
	{
		yvel += 0.35
	}
}
if (place_meeting(x,y,obj_player))
{
	obj_player.playerstate = 2
	instance_destroy()
}
