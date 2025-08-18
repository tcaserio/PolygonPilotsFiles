hp = 100;
currentHp = hp;

isHit = false;
fireRate = irandom(20) + 50; //Higher number means slower fire rate. 
moveRate = 30;	//Higher number means slower move rate.
hmoveRate = 3; //pixels moved per frame in horizontal movement


//Movement across room
if(x < 540) 
{
	hspeed = hmoveRate;
	direction = 0; //move right
}
else if (x >= 540) 
{
	hspeed = hmoveRate;
	direction = 180; //move left
}
