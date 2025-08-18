/// @description

hit = instance_place(x,y,Player_Obj); //collide with player

if(hit != noone && Player_Obj.dashActive == false) //if hit something
{
	hit.hp -= 5; //reduce hp by 1
	instance_destroy();
}