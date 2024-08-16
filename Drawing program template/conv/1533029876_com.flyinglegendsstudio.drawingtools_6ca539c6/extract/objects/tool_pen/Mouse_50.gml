/// @description Draw line

//Make the color
//If not picked color with color picker tool
if control.picked_color = noone {
	var h = hue_bar.sliders.x-hue_bar.sliders.dist;
	var s = saturation_bar.sliders.x-saturation_bar.sliders.dist;
	var v = value_bar.sliders.x-value_bar.sliders.dist;

	var color = make_color_hsv(h,s,v)
}else{
	var color = make_color_rgb(control.red,control.green,control.blue);
}

//Draw
if global.tool = tool.pen {
	surface_set_target(control.surface);
	draw_set_colour(color);
	draw_line_width(control.mx,control.my,control.mxp,control.myp,control.width);
	draw_circle(control.mx,control.my,control.width/2,false);
	draw_circle(control.mxp,control.myp,control.width/2,false);
	surface_reset_target();
}