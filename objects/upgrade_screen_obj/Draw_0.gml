// obj_upgrade_screen Draw Event
//draw_self();

// Set text color to white
draw_set_color(c_white);

// Draw upgrade options in the middle of the screen
var yOffset = room_height / 2 - (30 * array_length_1d(upgradeOptions)) / 2; // Center vertically
for (var i = 0; i < array_length_1d(upgradeOptions); i++) {
	//draw_rectangle(rectLeft, rectTop, rectRight, rectBottom, false);
	if(i <4)
	{
		draw_set_halign(fa_left);
		draw_text(room_width / 2 - 80, yOffset, upgradeOptions[i] + " - " + string(upgradeCost[i]) + " credits");
	}
	else
	{
		draw_set_halign(fa_left);
		draw_text(room_width / 2 - 80, yOffset, upgradeOptions[i]);
	}
    yOffset += 30;
}

// Reset color to default (optional, but good practice)
draw_set_color(c_white);
draw_sprite(sprite_index, 0, x , y + mpos * space - 77); //draw arrow