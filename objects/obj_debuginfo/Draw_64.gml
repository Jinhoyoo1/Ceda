depth = -9000
if (instance_exists(obj_player))
{
	draw_set_font(fnt_console_big)
	draw_text_transformed(0,64+34,"xsp:" + string(obj_player.hsp),1,1,0)
	draw_text_transformed(0,96+34,"spr:" + sprite_get_name(obj_player.sprite_index),1,1,0)
	draw_text_transformed(0,128+34,"powerup:" + string(obj_player.playerstate),1,1,0)
	draw_text_transformed(0,160+34,"mach2timer:" + string(obj_player.mach2),1,1,0)
}
draw_set_halign(fa_right)
draw_text(1275,695,"build 4 - i dont know how much i added")
draw_set_halign(fa_left)