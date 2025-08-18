/// @description blast attack 
bulletNum = 36;
if (alarm[2] = -1) //do not fire if spiral attack is happening.
{
	for (i = 0; i < bulletNum; i++;)
	{
		var dir = bulletDir;
		var bulletSpd = bulletSpeed
		var bullet = instance_create_layer(x, y, "Instances", BulletEnemy1_Obj);
			with(bullet)
			{
				direction = dir;
				speed = bulletSpd;
			}
		bullet.speed = speed + 5;
		bullet.image_index = 1 //teal bullet
		bulletDir -= (360/bulletNum); //make a full circle
	
	}
	alarm[3] = basicAttackCooldown;
}
else
{
	alarm[3] = basicAttackCooldown;
}