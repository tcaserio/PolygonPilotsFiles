/// @description 

//Random chance to drop health or credits
if(irandom(10) == 1)
{
	instance_create_layer(x, y, "Instances", HealthDrop_Obj);
}	
else if(irandom(5) = 1)
{
	instance_create_layer(x, y, "Instances", CreditDrop_Obj);
}
	
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