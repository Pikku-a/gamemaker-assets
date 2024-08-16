/// @description Save when clicked
if mouse_check_button_pressed(mb_left) && distance_to_point(mouse_x,mouse_y) <= 1 {
	var file = get_save_filename("png|*.png", "");
	if file != "" {
		surface_save(control.surface,file);
	}
}

//Change the image when mouse is on it
if distance_to_point(mouse_x,mouse_y)<=1 {
	image_index = 1;
}else{
	image_index = 0;
}