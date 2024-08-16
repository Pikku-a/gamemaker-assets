/// @description Mouse sprite
//Make the mouse sprite be the default when outside the drawing surface
if mouse_x < 32 || mouse_x > 732 || mouse_y < 32 || mouse_y > 632 {
	window_set_cursor(cr_default);
	cursor_sprite = noone;
}