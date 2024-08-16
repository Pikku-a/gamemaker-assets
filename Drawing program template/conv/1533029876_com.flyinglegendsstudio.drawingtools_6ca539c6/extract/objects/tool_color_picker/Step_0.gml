///@description Select the tool
if mouse_check_button_released(mb_left) {
	if distance_to_point(mouse_x,mouse_y)<= 1 {
		global.tool = tool.colorpicker;
	}
}

//Change the image when the tool is selected
if global.tool = tool.colorpicker || distance_to_point(mouse_x,mouse_y)<=1 {
	image_index = 1;
}else{
	image_index = 0;
}


if global.tool = tool.colorpicker {
	//Change the cursor sprite to color picker
	window_set_cursor(cr_none);
	cursor_sprite = cursor_color_picker;
	
	//pick a color
	if mouse_check_button_pressed(mb_left) {	
		with(control) {
			picked_color = surface_getpixel_ext(control.surface,mouse_x-32,mouse_y-32);
			blue = (picked_color >> 16) & 255;
			green = (picked_color >> 8) & 255;
			red = picked_color & 255;
		}
		//Set the tool to pen
		global.tool = tool.pen;
	}
}