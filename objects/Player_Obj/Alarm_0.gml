/// @description Primary Fire
if(mouse_check_button(mb_left))
	{
		//Had to create layer with depth (100) to create bullets after changing rooms
	var bullet1 = instance_create_layer(x, y, layer_create(100), Bullet1_Obj); 
	with (bullet1)
	    {
		speed = 14;
		direction = 90 //shoot up
	    }
	var bullet2 = instance_create_layer(x, y, layer_create(100), Bullet1_Obj); 
	with (bullet2)
	    {
		speed = 14;
		direction = 95 //shoot slightly left
	    }
	var bullet3 = instance_create_layer(x, y, layer_create(100), Bullet1_Obj); 
	with (bullet3)
	    {
		speed = 14;
		direction = 85 //shoot slightly right
	    }
	}

