
hpMax = 10;
hp = hpMax;
currentHp = hp;

//calculations to draw health bar
healthBar_width = 96;
healthBar_height = 8;
healthBar_x = (1080/2) - (healthBar_width/2);
healthBar_y = ystart + 100;

isHit = false;

accell = .6;
maxSpeed= 7
friction = .3;
initialSpeed = 0;

fireRate = 4; //Lower means faster

//Shield
shieldCD = 450;
alarm[2] = -1;//Start available

//Dash
dashActive = false;
dashSpeed = maxSpeed + 5;
dashCD = 60;
dashDuration = 10;
alarm[3] = 0;//Start available
alarm[4] = -1;

//bomb
bombCD = 40;


