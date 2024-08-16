/// @description Variables

//The surface
surface = surface_create(700,600);

//Mouse/drawing position
mx = mouse_x
my = mouse_y
mxp = mouse_x
myp = mouse_y

//Other variables
colour = c_black;
width = 1;

//For color picker tool
picked_color = noone;
blue = 0;
green = 0;
red = 0;


//An enum and global variable to manage what tool is selected
enum tool {
	pen,
	eraser,
	colorpicker,
	text,
	rectangle,
	circle,
	line
}

global.tool = tool.pen;