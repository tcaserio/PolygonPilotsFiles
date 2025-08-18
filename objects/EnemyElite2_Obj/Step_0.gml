/// @description Insert description here
// You can write your code in this editor
if (hp <= 0) {instance_destroy();}

//Control Damage Flashing
if (hp < currentHp) //check if hit by comparing hp one frame-ago to current hp. 
{
	isHit = true;
	currentHp = hp; //reset current hp
	alarm[0] = 3; //set time for red flash
}

if (aggresive == false)
{

}

//aggressive attack pattern on
else
{
	var bullet = instance_create_layer(x + irandom_range(-60, 60), y + 32, "Instances", BulletEnemy1_Obj );
	with(bullet)
	{
		speed = 5;
		direction = -90
	}
}

//change direction
if (alarm[1] == -1)
{
	//reset alarm
	alarm[1] = timeBeforeDirectionChange;
	//If left, right
	if (moveLeft == true)
	{
		moveLeft = false;
		moveRight = true;
	}
	//else, right so left
	else
	{
		moveLeft = true;
		moveRight = false;
	}
}

//movement
if (moveRight == true) {x += moveRate;}
else {x -= moveRate;}



//stay in room
if(room == room0)
{
	//Stop movement outside of room
	x = min(x,room_width-64); 
	x = max(x,64);
	y = max(y,64);
	//y = min(y,room_height-316); //give the player room to shoot
	
}
