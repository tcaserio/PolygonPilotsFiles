/// @description

if (hp <= 0) {instance_destroy();} //delete object when hp is zero

if (alarm[1] = -1 && instance_exists(Player_Obj)) 
{
	image_angle = point_direction(x, y, Player_Obj.x, Player_Obj.y)
}

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

//If getting ready to attack, track the player
if (instance_exists(Player_Obj) && alarm[1] = -1) 
	{image_angle = point_direction(x, y, Player_Obj.x, Player_Obj.y) + 90;}