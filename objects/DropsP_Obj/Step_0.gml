/// @description 
if (instance_exists(Player_Obj))
{
	if (distance_to_object(Player_Obj) <= range)
	{
		move_towards_point(Player_Obj.x, Player_Obj.y, movSpeed);
	}
}