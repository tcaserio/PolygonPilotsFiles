/// @description
maxHp = 10000;
hp = maxHp;
currentHp = hp;

vspeed = .4
xMov = 3;
mRight = false;
mLeft = true; //start going left

isHit = false;

bulletSpeed = 5;
bulletDir = 360;

attackDuration = irandom_range(250, 350);
attackCooldown = irandom_range(400, 500);
basicAttackCooldown = irandom_range(50, 90);
alarm[1] = attackCooldown;
alarm[3] = basicAttackCooldown;