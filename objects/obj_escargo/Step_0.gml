x += spd * dir
y += vsp
image_xscale = dir
if (place_meeting(x,y,obj_solid))
{
	while (place_meeting(x,y,obj_solid))
	{
		y--
		vsp = 0
	}
}
if (!place_meeting(x,y+1,obj_solid))
{
	vsp += 0.5
}
if (place_meeting(x+1 * dir,y-1,obj_solid))
{
	dir *= -1
}
if (place_meeting(x,y,obj_player) && (obj_player.y < y) && (!death))
{
	spd = 0
	sprite_index = spr_trashbugdeath
	alarm[0] = 25
	death = 1
	obj_player.vsp = (7 + (obj_player.key_jump2 * 2)) * -1
}