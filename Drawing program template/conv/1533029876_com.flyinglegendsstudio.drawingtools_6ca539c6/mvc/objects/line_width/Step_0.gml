///@description Change line width
if mouse_check_button_pressed(mb_left) && distance_to_point(mouse_x,mouse_y)<=1 {
	with(control) {
		width = get_integer("Enter pen width:",width);
	}
}

//Change the image when mouse is on it
if distance_to_point(mouse_x,mouse_y)<=1 {
	image_index = 1;
}else{
	image_index = 0;
}
