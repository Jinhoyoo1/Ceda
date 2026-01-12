if (shit != 0)
{
	y-= 1
	shit --
}else
{
	x += hsp *dir
}
y += yvel
if (object_get_name(object_index) != "obj_empanada")
{
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
			y--;
			yvel = 0;
		}
	}
}
if (shit == 0)
{
	if (place_meeting(x+dir,y,obj_solid))
	{
		dir *= -1;
	}
	if (!place_meeting(x,y+1,obj_solid))
	{
		yvel += 0.35;
	}
}
if (place_meeting(x,y,obj_player))
{
	if (powerid == 1)
	{
		if (obj_player.playerstate == 0)
		{
			obj_player.playerstate = powerid;
		}
	}else
	{
		obj_player.playerstate = powerid;
	}
	instance_destroy();
}