if (instance_exists(obj_player))
{
	if (obj_player.state = states.crouch)
	{
		draw_text(obj_player.x,obj_player.y-64,string(obj_player.spins))
	}
}