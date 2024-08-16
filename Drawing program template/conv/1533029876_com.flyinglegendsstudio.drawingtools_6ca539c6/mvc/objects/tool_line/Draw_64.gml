/// @description Description of tool
draw_self();
if distance_to_point(mouse_x,mouse_y)<=1 {
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_text(mouse_x+10,mouse_y+10,"Line");
}