x += spd * dir
y += vsp
image_xscale = dir
if (place_meeting(x,y,obj_escargo))
{
	var koopa = instance_place(x,y,obj_escargo)
	if (koopa.sprite_index = spr_escargoshell) && (colliding)
	{
		sprite_index = spr_shelldeath
		colliding = 0
		vsp = -10
		spd = koopa.spd * 0.9
	}
}
if (colliding)
{
	if (place_meeting(x,y,obj_solid))
	{
		while (place_meeting(x,y,obj_solid))
		{
			y--
			vsp = 0
		}
	}
	if (place_meeting(x+spd* dir,y-2,obj_solid))
	{
		if (object_index == obj_escargo)
		{
			if (shelled)
			{
				var kill = instance_place(x+spd* dir,y-10,obj_brickblock)
				instance_destroy(kill)
			}
		}
		dir *= -1
	}
}
	if (!place_meeting(x,y+1,obj_solid)) || (!colliding)
	{
		vsp += 0.5
	}