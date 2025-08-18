/// @description Tick down a spawner if one exists
if (instance_exists(Spawner_Obj))
{
	with (Spawner_Obj)
	{
		if (triggered)
		{
			remaining[current_wave]--;
		}
	}
}