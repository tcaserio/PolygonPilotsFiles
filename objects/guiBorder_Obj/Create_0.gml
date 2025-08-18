global.credits = 0;
lives = 3;

if (instance_exists(Player_Obj))
{
	//Health Bar
	hp = Player_Obj.hp;
	hpMax = hp;

	//calculations to draw health bar
	healthBar_width = 96;
	healthBar_height = 8;
	healthBar_x = (1080/2) - (healthBar_width/2); //place middle
	healthBar_y = ystart;
	
	//Shield Cooldown
	shieldCD = Player_Obj.shieldCD;
	maxShieldCD = shieldCD;
	
	shieldBar_width = 96;
	shieldBar_height = 8;
	shieldBar_x = (1080/1.5) - (healthBar_width/1.5); // place right of middle
	shieldBar_y = ystart;
	depth = -1000;
}