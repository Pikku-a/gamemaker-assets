/// @description Draw always to mouse position
if (mouse_check_button(mb_left)) {
	mxp = mx;
	myp = my;
}
else {
	mxp = mouse_x-32;
	myp = mouse_y-32;
}

mx = mouse_x-32;
my = mouse_y-32;

//We remove 32 of the mouse positions,
//because we put the surface in the draw event to the position 32,32

//If surface doesn't exist, create it
if !surface_exists(surface) {
	surface = surface_create(700,600);
}