/// @description 

if(hp <= 0) {instance_destroy();}

//accelerate towards player
if (instance_exists(Player_Obj))
{
	direction = point_direction(x, y, Player_Obj.x, Player_Obj.y);
	image_angle = point_direction(x, y, Player_Obj.x, Player_Obj.y) + 90;
	if (speed <= maxSpeed) {speed += accell;}
	
	//avoid overlaping... not a perfect solution
	mp_potential_step_object(Player_Obj.x, Player_Obj.y, speed, Enemy2_Obj); 
}

//Control Damage Flashing
if (hp < currentHp) //check if hit by comparing hp one frame-ago to current hp. 
{
	isHit = true;
	currentHp = hp; //reset current hp
	alarm[0] = 3; //set time for red flash
}

