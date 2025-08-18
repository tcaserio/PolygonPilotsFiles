/// @description
draw_self();

if(alarm[2] != -1)
{	
	if(instance_exists(Player_Obj))
	{
		draw_set_color(c_red);
		draw_line(x, y, Player_Obj.x, Player_Obj.y);
	}
}

draw_set_halign (fa_middle);
draw_set_color(c_red);

draw_text(x, y - 32, hp);