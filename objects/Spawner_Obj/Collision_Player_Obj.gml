/// @desc Start Wave

if (triggered == false)
{
	//with (oDoor) closed = true;
	triggered = true;
	
	//figure out number of waves and enemies per wave
	total_waves = -1;
	for (var i = 0; i < ds_list_size(waves); i++)
	{
		var thisEntry = ds_list_find_value(waves, i);
		if (thisEntry[_WAVE] > total_waves)
		{
			total_waves ++;
			remaining[total_waves] = 0;
		}
		remaining[total_waves]++;
		//show_debug_message(string(remaining[total_waves]))
	}
}
