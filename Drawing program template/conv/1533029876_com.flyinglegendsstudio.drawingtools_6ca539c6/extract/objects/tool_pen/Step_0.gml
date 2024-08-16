///@description Select the tool
if mouse_check_button_pressed(mb_left) {
	if distance_to_point(mouse_x,mouse_y)<= 1 {
		global.tool = tool.pen;
	}
}

//Change the image when the tool is selected
if global.tool = tool.pen || distance_to_point(mouse_x,mouse_y)<=1 {
	image_index = 1;
}else{
	image_index = 0;
}

//Change the cursor sprite to pen
if global.tool = tool.pen {
	window_set_cursor(cr_none);
	cursor_sprite = cursor_pen;
}