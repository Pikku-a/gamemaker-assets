/// @description Attacking

//When attacking, create the attack object
if keyboard_check_pressed(vk_space) {
	instance_create_layer(x,y,"instances",player_attack);
}



///Moving
//Left
if (keyboard_check(vk_left)) {
	phy_position_x -= 4;
	sprite_index = example_player_left;
}
//Right
if (keyboard_check(vk_right)) {
	phy_position_x += 4;
	sprite_index = example_player_right;
}
//Up
if (keyboard_check(vk_up)) {
	phy_position_y -= 4;
	sprite_index = example_player_up;
}
//Down
if (keyboard_check(vk_down)) {
	phy_position_y += 4;
	sprite_index = example_player_down;
}

//Stop moving
if (keyboard_check_released(vk_left)) {
	phy_position_x -= 0;
}
if (keyboard_check_released(vk_right)) {
	phy_position_x += 0;
}
if (keyboard_check_released(vk_up)) {
	phy_position_y -= 0;
}
if (keyboard_check_released(vk_down)) {
	phy_position_y += 0;
}


//Destroy when health is 0
if hp <= 0 {
	instance_destroy();
}