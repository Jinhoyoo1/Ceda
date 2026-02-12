event_inherited()
if (place_meeting(x,y,obj_player) && (obj_player.y < y) && (!death))
{
	spd = 0
	sprite_index = spr_trashbugdeath
	alarm[0] = 25
	death = 1
	obj_player.vsp = (7 + (obj_player.key_jump2 * 2)) * -1
}
