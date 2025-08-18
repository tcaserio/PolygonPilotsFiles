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
if (alarm[4] = -1) //Cap speed unless dash is active
{
	if (hspeed >= maxSpeed) {hspeed = maxSpeed;}
	if (hspeed <= maxSpeed * -1) {hspeed = (maxSpeed * -1);}
	if (vspeed >= maxSpeed) {vspeed = maxSpeed;}
	if (vspeed <= maxSpeed * -1) {vspeed = (maxSpeed * -1);}
}


//Stop movement outside of room
x = min(x,room_width-16); 
x = max(x,16);
y = max(y,16);
y = min(y,room_height-80); //16 +64 = 80. Represents half the player sprite and the bottom GUI

//Health Calculations
if (hp <= 0) {instance_destroy();} //Death

//Don't go over max health
if (hp > hpMax) 
{
	hp = hpMax;
	currentHp = hp;	
}

if (hp < currentHp) //check if hit by comparing hp one frame-ago to current hp. 
{
	isHit = true;
	currentHp = hp; //reset current hp
	alarm[1] = 3; //set time for red flash
}


//Cooldowns
if (alarm[0] = -1) {alarm[0] = fireRate;} //fire rate - base 8


//Shield Ability
if (mouse_check_button(mb_right) && alarm[2] = -1)
{
	var shield = instance_create_layer(x, y, layer_create(100), Shield_Obj); 
	alarm[2] = shieldCD;
}

//Dash ability
if (keyboard_check(vk_shift) && speed != 0 && alarm[3] = -1)//doesn't work in alarm tab
{
	dashActive = true;
	initialSpeed = speed;
	alarm[3] = dashCD; //Reset Dash Cooldown
	alarm[4] = dashDuration; //Set Dash length
	
	motion_add(direction, dashSpeed);
}

//Laser
if (keyboard_check(vk_space) && !instance_exists(Laser_Obj))
{
	instance_create_layer(x - 16, y - 16, "Instances", Laser_Obj);
}

//Bomb
if (keyboard_check(ord("Q")) && !instance_exists(Bomb_Obj) && alarm[5] == -1)
{
	instance_create_layer(x - 16, y - 16, "Instances", Bomb_Obj);
	alarm[5] = bombCD;
}