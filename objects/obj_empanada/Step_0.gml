y+= vsp
if (shit != 0)
{
	shit --
}
if (vsp > 0)
{
	dotheshit = true
}
if (dotheshit) && (!stopped)
{
	//vsp = 0.5
	funkyvalue++
	vsp = sin(funkyvalue*0.1) * 2.5
}
if (place_meeting(x,y,obj_solid)) && (shit == 0)
{
	while (place_meeting(x,y,obj_solid))
	{
		stopped = true
		y-=0.1
		vsp = 0
	}
}else
{
	if !dotheshit
	{
		vsp += 0.3
	}
}
