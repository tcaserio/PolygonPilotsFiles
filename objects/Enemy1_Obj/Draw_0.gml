if !(isHit) draw_self();

if (isHit) //if hit, flash enemy
{
	gpu_set_fog(true, c_white, 0, 0); //enable flash
	draw_self();
	gpu_set_fog(false, c_white, 0, 0); //disable flash
}

draw_set_halign (fa_middle);
draw_set_color(c_red);

draw_text(x, y - 32, hp);
	