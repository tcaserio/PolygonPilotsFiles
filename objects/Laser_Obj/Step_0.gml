/// @description 
if(j <= maxLength) j += 40;

if (instance_exists(Player_Obj)) //Stick with player
{
	x = Player_Obj.x;
	y = Player_Obj.y;
}

if (keyboard_check(vk_space) == false) {instance_destroy();} //remove laser if not pressing space

//direction = point_direction(Player_Obj.x, Player_Obj.y, mouse_x, mouse_y); //point towards mouse
direction = 90; //point up

for (i = 0; i < j; i++;)
{
	xEnd = x + lengthdir_x(i, direction);
	yEnd = y + lengthdir_y(i, direction);
	
	laserLength = i;
	
	var enemy = collision_point(xEnd, yEnd, EnemyP_Obj, 0, 0); //Assign current hit enemy
	
	if (collision_point(xEnd, yEnd, EnemyP_Obj, 0, 0)) 
	{
		part_particles_create(ParticleSetup_Obj.particleSystem, xEnd, yEnd, ParticleSetup_Obj.particleTypeHit, 1);
		part_particles_create(ParticleSetup_Obj.particleSystem, xEnd, yEnd, ParticleSetup_Obj.particleTypeSpark, 10);
		enemy.hp -= global.laserDamage; //damage/frame
		break;
	}
}

