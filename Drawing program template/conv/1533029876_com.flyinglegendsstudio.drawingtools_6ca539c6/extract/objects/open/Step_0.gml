/// @description Open a file when clicked
if mouse_check_button_pressed(mb_left) && distance_to_point(mouse_x,mouse_y) <= 1 {
	var file = get_open_filename("drawing|*.png", "");
	if file != "" {
		var opened_image = sprite_add(file,1,true,true,32,32);
		surface_set_target(control.surface);
		draw_sprite(opened_image,0,32,32);
		surface_reset_target();
	}
}


//Change the image when mouse is on it
if distance_to_point(mouse_x,mouse_y)<=1 {
	image_index = 1;
}else{
	image_index = 0;
}