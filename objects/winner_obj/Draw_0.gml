
// obj_game_over Draw Event
draw_self();

// Set text color to white
draw_set_color(c_white);

// Draw "GAME OVER" text in the center of the screen
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
// Set the font size
//draw_set_font_size(16);

draw_text(room_width / 2, room_height / 2, "YOU WON");
//draw_set_font_size(12);
draw_text(room_width / 2, room_height / 2 + 30, "Press 'Esc' to Exit");
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Reset color to default (optional, but good practice)
draw_set_color(c_white);
//draw_set_font(fnt_default); // Reset to the default font
//draw_set_font_size(12); // Reset to the default font size