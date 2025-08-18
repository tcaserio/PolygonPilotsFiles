function Menu_Scr() {
	switch (mpos)
	{
		//Start Game
		case 0: 
		{
			room_goto_next();
			break;
		}
		//Continue Game
		case 1:
		{
			break;
		}
		//Level Select
		case 2:
		{
			break;
		}
		//Options
		case 3:
		{
			break;
		}
		//Quit
		case 4: game_end(); break;
	
		default: break;
	}


}
