/// @Flash on Hit

if !(isHit) draw_self();

if (isHit) //if hit, flash enemy
	{
		gpu_set_fog(true, c_red, 0, 0); //enable flash
		draw_self();
		gpu_set_fog(false, c_red, 0, 0); //disable flash
	}
