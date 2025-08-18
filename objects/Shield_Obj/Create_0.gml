/// @description

upTime = global.shieldUptime; //number of frames that the shield will be up for. 30 is equal to 1 second.
alarm[0] = upTime;
depth = 100;//Display above the player

if (instance_exists(Player_Obj))
{
	friction = Player_Obj.friction;
	accell = Player_Obj.accell;
	maxSpeed = Player_Obj.maxSpeed;

	x = Player_Obj.x;
	y = Player_Obj.y;
	speed = Player_Obj.speed;
}