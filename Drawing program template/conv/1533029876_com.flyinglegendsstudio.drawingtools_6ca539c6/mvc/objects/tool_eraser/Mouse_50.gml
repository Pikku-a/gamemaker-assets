/// @description Draw white line to erase
if global.tool = tool.eraser {
	surface_set_target(control.surface);
	draw_set_colour(c_white);
	draw_line_width(control.mx,control.my,control.mxp,control.myp,control.width);
	draw_circle(control.mx,control.my,control.width/2,false);
	draw_circle(control.mxp,control.myp,control.width/2,false);
	surface_reset_target();
}