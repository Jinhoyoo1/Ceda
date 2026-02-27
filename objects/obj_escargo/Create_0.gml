vsp = 0
alarm[1] = 1
if (!variable_instance_exists(id,"shelled"))
{
	shelled = 0
	spd = 0
}
dir = 1
death = 0
spr_shelldeath = spr_escargo_shelldeath
event_inherited()