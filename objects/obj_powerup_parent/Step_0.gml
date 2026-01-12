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