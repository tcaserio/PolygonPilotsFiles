/// @description

if(hp <= 0) {instance_destroy();}

//Bounce off of walls
//Do not move when doing spiral attack
if (alarm[1] > -1)
{
	if (mRight = true) {x += xMov;}
	if (mLeft = true) {x -= xMov;}
	if (x > 1000) 
	{
		xMov = irandom_range(2,4);
		mRight = false
		mLeft = true;
	}
	if (x < 80)
	{
		xMov = irandom_range(2,4);
		mRight = true;
		mLeft = false;
	}
}
else
{
	//Spiral bullets
	var dir = bulletDir;
	var bulletSpd = bulletSpeed
	var bullet = instance_create_layer(x, y, "Instances", BulletEnemy1_Obj);
		with(bullet)
		{
			direction = dir;
			speed = bulletSpd;
		}
	bullet.image_index = 1 //teal bullet
	bulletDir -= 13; // 13 means the player will have to constantly move to not get hit
}
//Control Damage Flashing
if (hp < currentHp) //check if hit by comparing hp one frame-ago to current hp. 
{
	isHit = true;
	currentHp = hp; //reset current hp
	alarm[0] = 3; //set time for red flash
}

//stay in room
if(room == room0)
{
	//Stop movement outside of room
	x = min(x,room_width-64); 
	x = max(x,64);
	y = max(y,64);
	//y = min(y,room_height-316); //give the player room to shoot
}

