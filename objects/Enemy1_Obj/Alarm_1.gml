//When allowed to fire(alarm runs to -1), fire towards player
if (instance_exists(Player_Obj))
{
	var dir = point_direction(x, y, Player_Obj.x, Player_Obj.y);
	var bullet = instance_create_layer(x, y, "Instances", BulletEnemy1_Obj);
	with(bullet)
	{
		direction = dir;
		speed = 10;
		image_index = 0 //orange bullet
	}

}