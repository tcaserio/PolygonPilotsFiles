/// @description 

hp = 700;
maxHp = hp;
currentHp = hp;

vspeed = .5;
isHit = false;

moveTime = 75; //Time it takes to get in position
attackCD = 150;
attackFireTime = 45;
alarm[1] = -1;

image_speed = 0;

alarm[3] = moveTime;
//Movement across room

vspeed = -3;
direction = 270;