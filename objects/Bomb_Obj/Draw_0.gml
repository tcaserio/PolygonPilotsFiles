/// @description
draw_self();

if(alarm[0] = 45 || alarm[0] = 30 || alarm[0] = 15 ||
	alarm[0] = 44 || alarm[0] = 29 || alarm[0] = 14 ||
	alarm[0] = 43 || alarm[0] = 28 || alarm[0] = 13)
{
	gpu_set_fog(true, c_black, 0, 0); //enable flash
	draw_self();
	gpu_set_fog(false, c_black, 0, 0); //disable flash
}