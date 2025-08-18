/// @description Insert description here
// You can write your code in this editor

//MOVING THE CURSOR
var move = 0;

 //returns the biggest (the one that was pressed)
move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0); //returns the biggest 
move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

//Keep track of where the cursor is
if (move != 0)
{
	mpos += move;
	if (mpos < 0) {mpos = array_length_1d(upgradeOptions) - 1;} //If going above menu, go to bottom of menu (array length)
	if (mpos > array_length_1d(upgradeOptions) - 1) {mpos = 0;} //If going below menu, go back to top
}

//check for selection
var push;
push = max(keyboard_check_released(vk_enter), 0);

//Call menu script if selected
if (push == 1) Upgrade_Scr();
