/// @description

draw_self(); //No image shows without this?

//Flash 3 times for 3 frames
if (alarm[0] = 60 || alarm[0] = 59 || alarm [0] = 58 || 
	alarm[0] = 40 || alarm[0] = 39 || alarm[0] = 38  ||
	alarm[0] = 20 || alarm[0] = 19 || alarm[0] = 18)
{
	gpu_set_fog(true, c_black, 0, 0); //enable flash
	draw_self();
	gpu_set_fog(false, c_black, 0, 0); //disable flash
}
