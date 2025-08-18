hit = instance_place(x,y,Player_Obj); //collide with player

if(hit != noone && Player_Obj.dashActive == false) //if hit something
{
	hit.hp -= 1; //reduce hp by 1
	instance_destroy();
}

//Wave the bullets? Somehow this works ok
if (wavyMovement = true && moveRight = true)
{
	
	direction = 40*dsin(sinInput) - 90;
	sinInput -= waveAmplitude;
}
else if (wavyMovement = true && moveRight = false)
{
	direction = 40*dsin(sinInput - sinInput*2) - 90; 
	sinInput -= waveAmplitude;
}
