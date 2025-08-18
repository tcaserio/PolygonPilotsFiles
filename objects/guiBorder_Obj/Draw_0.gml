/// @description 

draw_self();

//Display lives
draw_set_halign (fa_left);
draw_set_halign (fa_middle);
draw_set_color(c_white);
if(lives >= 0)
	draw_text(35, 1060, "Lives: " + string(lives))
for (i = lives; i > 0; i--;)
{
	draw_sprite(Player_Spr, 0, 50 + 45 * i, 1060);
}

//Display Credits
draw_text(40, 1030, "Credits: " + string(global.credits));
