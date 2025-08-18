/// @description
//draw_sprite(LaserHead_Spr, 0, x + lengthdir_x(j, direction), y + lengthdir_y(j, direction)); - Draw the top of the laser
//Laser top keeps going after collision. Solve this later

for(i = 0; i < laserLength; i++;)
{
	var flicker = random_range(.8, 1);
	draw_sprite_ext(LaserBody_Spr, 0, x + lengthdir_x(i, direction), y + lengthdir_y(i, direction), 1, flicker, direction, c_white, 1 )	
}
