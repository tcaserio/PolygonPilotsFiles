function Upgrade_Scr() {
	//upgradeCost = 10;
	switch (mpos)
	{
		//Bullet Damage Upgrade
		case 0: 
		{
			// Handle the click for the corresponding upgrade option
            //var upgradeCost = upgradeCost[0];
            if (global.credits >= upgradeCost[0]) {
                // Deduct the credits and apply the upgrade
                global.credits -= upgradeCost[0];
                // Implement the logic to apply the upgrade to the player character
				global.bulletDamage += 10;
                show_message("Bullet Damage Increased!");
            } else {
                show_message("Not enough credits!");
            }
			break;
		}
		//Laser Damage Upgrade
		case 1:
		{
			 // Handle the click for the corresponding upgrade option
            //var upgradeCost = upgradeCost[1];
            if (global.credits >= upgradeCost[1]) {
                // Deduct the credits and apply the upgrade
                global.credits -= upgradeCost[1];
                // Implement the logic to apply the upgrade to the player character
				global.laserDamage += 5;
                show_message("Laser Damage Increased!");
            } else {
                show_message("Not enough credits!");
            }
			break;
		}
		//Bomb Damage Upgrade
		case 2:
		{
			 // Handle the click for the corresponding upgrade option
            //var upgradeCost = upgradeCost[2];
            if (global.credits >= upgradeCost[2]) {
                // Deduct the credits and apply the upgrade
                global.credits -= upgradeCost[2];
                // Implement the logic to apply the upgrade to the player character
				global.bombDamage += 200;
                show_message("Bomb Damage Increased!");
            } else {
                show_message("Not enough credits!");
            }
			break;
		}
		//Upgrade Sheild Uptime
		case 3:
		{
			 // Handle the click for the corresponding upgrade option
            if (global.credits >= upgradeCost[3]) {
                // Deduct the credits and apply the upgrade
                global.credits -= upgradeCost[3];
                // Implement the logic to apply the upgrade to the player character
				global.shieldUptime += 100;
				if (instance_exists(Player_Obj))
				{
					Player_Obj.shieldCD += 100;
				}
                show_message("Shield Duration Increased!");
            } else {
                show_message("Not enough credits!");
            }
			break;
		}
		//Next Level
		case 4:
		{
			if(instance_exists(upgrade_screen_obj))
			{
				instance_destroy(upgrade_screen_obj);
			}
		}
	
		default: break;
	}


}
