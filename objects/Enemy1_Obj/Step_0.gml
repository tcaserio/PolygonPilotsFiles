


if (hp <= 0) {instance_destroy();} //delete object when hp is zero

if (alarm[1] = -1) {alarm[1] = fireRate}

if (alarm[2] = -1) {alarm[2] = moveRate}

//MOVEMENT
//Random movement and down
//if (irandom(40) = 1) {motion_set(irandom(360), 1 + irandom(3));}
//else vspeed = 1;

////Stop movement outside of room
//if(room == room0)
//{

//	x = min(x,room_width-16); 
//	x = max(x,16);
//	y = max(y,16);
//	//y = min(y,room_height-316); //give the player room to shoot
//}

//Control Damage Flashing
if (hp < currentHp) //check if hit by comparing hp one frame-ago to current hp. 
{
	isHit = true;
	currentHp = hp; //reset current hp
	alarm[0] = 3; //set time for red flash
}