/// @description detonation

//create explosion
var blast = instance_create_layer(x, y, "Instances", BombBlast_Obj)
	blast.blastSize = blastSize;
var DAMAGE = damage;
with (EnemyP_Obj)
{
	if(point_distance(x, y, other.x, other.y) < 8 + blast.blastSize) //damage all enemies in range
	{
		hp -= DAMAGE;
	}
}
	
instance_destroy();

