
if (instance_exists(Player_Obj)) {hp = Player_Obj.hp;}
if (instance_exists(Player_Obj)) {global.shieldCD = Player_Obj.alarm[2];}

//if player dies and has more lives, respawn
if (instance_exists(Player_Obj) == false && lives >= 0) 
{
	lives --; //one life is consumed
	if(lives > 0)
		instance_create_layer(room_width/2, room_height - 180, "Instances", Player_Obj);
}
//game over
if(lives < 0) 
{
	instance_create_layer(room_width / 2, room_height / 2, "Instances", game_over_obj);
}
