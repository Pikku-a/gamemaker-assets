/// @description Reduce and increase health
if keyboard_check_pressed(vk_down) {
	hp -= 10;
}
if keyboard_check_pressed(vk_up) {
	hp += 10;
}

