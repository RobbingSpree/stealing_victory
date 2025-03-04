/// @description Insert description here
// You can write your code in this editor

if expl_mode == "plan" {
	var left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	var right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	var down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
	var up	 = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	
	//var xch = right - left;
	//var ych = down - up;
	
	//player_x += xch;
	//player_y += ych;
	
	var cel = dungeon_floors[current_floor].map_layout[player_x,player_y];
	var cel_ex = dungeon_floors[current_floor].map_explore[player_x,player_y];
	
	if cel & 0b0001 && right//right 
		player_x++
	if cel & 0b0010 && left //left 
		player_x--
	if cel & 0b0100 && down//down 
		player_y++
	if cel & 0b1000 && up//up
		player_y--
}