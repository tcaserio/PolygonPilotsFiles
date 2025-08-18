/// @description Insert description here
// You can write your code in this editor


// obj_game_over Draw Event
draw_self();

// Set text color to white
draw_set_color(c_white);

// Draw "GAME OVER" text in the center of the screen
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width / 2, room_height - 800, "LEVEL "+ string(global.currentLevel));
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Reset color to default (optional, but good practice)
draw_set_color(c_white);

