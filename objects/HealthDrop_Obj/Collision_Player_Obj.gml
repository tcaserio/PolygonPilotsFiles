/// @description Add Health

if (instance_exists(Player_Obj))
{
	if (Player_Obj.hp < Player_Obj.hpMax) //Don't add health if at max
	{
		Player_Obj.hp += 2;
		Player_Obj.currentHp += 2;
	}
}

instance_destroy();