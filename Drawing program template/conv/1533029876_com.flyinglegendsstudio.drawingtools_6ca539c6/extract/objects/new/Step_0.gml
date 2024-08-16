/// @description New file/Start from 0
if mouse_check_button_pressed(mb_left) && distance_to_point(mouse_x,mouse_y) <= 1 {
	if show_question("Are you sure to start a new drawing?") {
		with(control) {
			surface_set_target(surface);
			draw_clear_alpha(c_black,0);
			surface_reset_target();
		}
	}
}

//Change the image when mouse is on it
if distance_to_point(mouse_x,mouse_y)<=1 {
	image_index = 1;
}else{
	image_index = 0;
}