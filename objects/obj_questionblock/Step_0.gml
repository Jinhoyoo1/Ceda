
if (variable_instance_exists(id,"amount")) && (!didsetup)
{
	switch id.drops
	{
		case "bagel":
			id.actualdrop = obj_bagel
		break;
		case "coin":
			id.actualdrop = obj_decoycoin
		break;
		case "gasoline":
			id.actualdrop = obj_gasoline
		break;
		case "empanada":
			id.actualdrop = obj_empanada
		break;
	}
	id.actualamount = id.amount
	didsetup = true
}
y += vsp
y = clamp(y, startingy-40,startingy)
vsp += 0.5
if (vsp > 0.5) && (id.actualamount > 0) 
{
	image_index = 2
}

	if !place_meeting(x, y + 1, obj_player)
	{
		grounded = false;
		if (y == startingy)
		{
			vsp = 0
			if (id.actualamount > 0)
			{
				image_index = 0
			}else
			{
				image_index = 3
			}
		}
	}
	else if !grounded
	{
		if (y == startingy)
		{
			if (id.actualamount > 0)
			{
				image_index = 1
				id.actualamount --
				if (id.actualdrop == obj_decoycoin)
				{
					instance_create(x+24, y-10, id.actualdrop)
				}else
				{
					instance_create_depth(x, y-10,depth+1, id.actualdrop)
				}
			}
			vsp = -3.5
		}
	}