hit = 0
wait = 0
spd = 4
frame = 0
delay = 0
startingy = y
grounded = true
vsp = 0
didsetup = 0
if (!variable_instance_exists(id,"amount"))
{
	id.amount = 1
}
if (!variable_instance_exists(id,"drops"))
{
	id.drops = 0
}
actualdrop = 0
actualamount = 0
/*if (amount < 1)
{
	amount = 1
}
if (drops == 0)
{
	drops = "coin"
}