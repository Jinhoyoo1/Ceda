event_inherited()
		
if (place_meeting(x,y,obj_player))
{
	if  (!death) 
	{
		if(obj_player.y < y)
		{
			shelled = 1
			spd = 0
			sprite_index = spr_escargoshell
			//alarm[0] = 25
			death = 1
		}
	}else
	{
		if (obj_player.x > x)
		{
			dir = -1
		}else
		{
			dir = 1
		}
		spd = 5
	}
	if (obj_player.y < y)
	{
		obj_player.vsp = (7 + (obj_player.key_jump2 * 2)) * -1
	}
}