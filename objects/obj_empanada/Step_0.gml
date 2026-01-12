
if (yvel > 0)
{
	dotheshit = true
}
if (dotheshit) && (!stopped)
{
	//yvel = 0.5
	funkyvalue++
	yvel = sin(funkyvalue*0.1) * 2.5
}
event_inherited()
