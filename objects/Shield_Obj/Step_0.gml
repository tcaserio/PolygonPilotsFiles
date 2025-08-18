/// @description 

if (instance_exists(Player_Obj))
{
	//Need to correct shield getting left behind
	x = Player_Obj.x;
	y = Player_Obj.y;
	speed = Player_Obj.speed;
	
	//mimic movement of player
	//Get player input
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_up = keyboard_check(ord("S"));
	key_down = keyboard_check(ord("W"));

	//Movement with Acceleration
	if (key_left == true) {hspeed -= accell;}// Move left

	if (key_right == true) {hspeed += accell;}//Move Right

	if (key_up == true) {vspeed += accell;}//Move Up

	if (key_down == true) {vspeed -= accell;}//Move Down


	//Max speeds
	if (hspeed >= maxSpeed) {hspeed = maxSpeed;}
	if (hspeed <= maxSpeed * -1) {hspeed = (maxSpeed * -1);}
	if (vspeed >= maxSpeed) {vspeed = maxSpeed;}
	if (vspeed <= maxSpeed * -1) {vspeed = (maxSpeed * -1);}



	//Stop movement outside of room
	x = min(x,room_width-16); 
	x = max(x,16);
	y = max(y,16);
	y = min(y,room_height-80); //16 +64 = 80. Represents half the player sprite and the bottom GUI
}

