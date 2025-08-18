/// @desc Health Bar


//Health Bar\
 // stretch health bar based on hp value
draw_sprite_stretched(HealthBar_Spr, 0, healthBar_x, healthBar_y + 15, (hp/hpMax) * healthBar_width, healthBar_height)
draw_sprite(HealthBorder_Spr, 0, healthBar_x, healthBar_y + 15);

//Shield Cooldown
 // stretch cooldown bar based on alarm value
	if(instance_exists(Player_Obj))
	{	
		draw_sprite_stretched(Cooldown_Spr, 0, shieldBar_x, shieldBar_y + 15, (Player_Obj.alarm[2]/Player_Obj.shieldCD) * shieldBar_width, shieldBar_height)
	}
draw_sprite(HealthBorder_Spr, 0, shieldBar_x, shieldBar_y  + 15);


//Text Initialize
draw_set_halign (fa_left);
draw_set_valign(fa_middle);
draw_set_font(Gui_Fnt);
draw_set_color(c_white);

//HP Label
draw_text (x + 480 , y, string("Hit Points"));
draw_text (x + 620 , y, string("Shield Cooldown"));


