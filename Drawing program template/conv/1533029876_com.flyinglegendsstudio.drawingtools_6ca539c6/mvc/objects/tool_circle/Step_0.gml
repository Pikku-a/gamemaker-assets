///@description Select the tool
if mouse_check_button_pressed(mb_left) {
	if distance_to_point(mouse_x,mouse_y)<= 1 {
		global.tool = tool.circle;
	}
	//Set the center of the circle
	if global.tool = tool.circle {
		holding = true;
		x1 = mouse_x-32;
		y1 = mouse_y-32;
	}
}

if mouse_check_button_released(mb_left) {
	if global.tool = tool.circle {
		holding = false;
		//Make the color
		if control.picked_color = noone {
			var h = hue_bar.sliders.x-hue_bar.sliders.dist;
			var s = saturation_bar.sliders.x-saturation_bar.sliders.dist;
			var v = value_bar.sliders.x-value_bar.sliders.dist;

			var color = make_color_hsv(h,s,v);
		}else{
			var color = make_color_rgb(control.red,control.green,control.blue);
		}

		//Draw the circle
		surface_set_target(control.surface);
		draw_set_color(color);
		draw_circle(x1,y1,r,true);
		surface_reset_target();
	}
}

if global.tool = tool.circle {
	
	//Set the cursor sprite
	window_set_cursor(cr_none);
	cursor_sprite = cursor_other;
	
	//The other points of the circle
	if holding = true {
		x2 = mouse_x-32;
		y2 = mouse_y-32;
		r = point_distance(x1,y1,x2,y2);
	}
}

//Change the image when the tool is selected
if global.tool = tool.circle || distance_to_point(mouse_x,mouse_y)<=1 {
	image_index = 1;
}else{
	image_index = 0;
}