/// @description Insert description here
// You can write your code in this editor
if(irandom(10) == 1)
{
	instance_create_layer(x, y, "Instances", HealthDrop_Obj);
}	
else if(irandom(5) = 1)
{
	instance_create_layer(x, y, "Instances", CreditDrop_Obj);
}

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