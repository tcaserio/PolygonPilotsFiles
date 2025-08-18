/// @description -Fired shot, Cooldown active

alarm [1] = attackCD;
image_speed = 0; //stop animating
image_index = 0; //make sure on right frame;

var bullet = instance_create_layer(x, y + 16, "Instances", SnipeBullet_Obj);
with (bullet)
{
	if (instance_exists(Player_Obj)) {direction = point_direction(x, y, Player_Obj.x, Player_Obj.y);}
	speed = 30;
	image_angle = direction - 90;
}

speed = .5