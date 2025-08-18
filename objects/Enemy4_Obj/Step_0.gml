/// @description Insert description here
// You can write your code in this editor

//death
if (hp <= 0) {instance_destroy();}

//check if hit by comparing hp one frame-ago to current hp. 
if (hp < currentHp) 
{
	isHit = true;
	currentHp = hp; //reset current hp
	alarm[0] = 3; //set time for red flash
}

//Movement
if (attack = false) // if not attacking
{
	if (moveRight = true) {x += moveRate;}
	else {x -= moveRate;}
}
else
{
	speed = 0;
}

//move back up after reaching a certain y value
if (y >= 520) 
{
	direction = 90; 
	speed = 5;
	//prevent other actions from triggering
	alarm[1] = 1000;
	alarm[2] = 1000;
	alarm[3] = 1000;
	alarm[4] = 1000;
} 
//ATTACK - Shoot two bullets that wave
else if (attack = true && alarm[4] = -1)
{
	var bullet = instance_create_layer(x - 10, y, "Instances", BulletEnemy1_Obj);
	with(bullet)
	{
		//direction = 270; //shoot down
		speed = 5;
		image_index = 6 //purple bullet
		wavyMovement = true; // wave your bullets like you just don't care!
		moveRight = false
	}
	var bullet1 = instance_create_layer(x + 10, y, "Instances", BulletEnemy1_Obj);
	with(bullet1)
	{
		//direction = 270; //shoot down
		speed = 5;
		image_index = 6 //purple bullet
		wavyMovement = true; // wave your bullets like you just don't care!
		moveRight = true; //move opposite directions as the other bullet
		}
	alarm[4] = fireRate; //reset fire timer
}
