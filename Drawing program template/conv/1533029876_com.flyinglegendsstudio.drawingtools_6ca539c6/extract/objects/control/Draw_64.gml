/// @description Draw picked color

//If a color is picked, make the color rectangle show it
if picked_color != noone {
	var color = make_color_rgb(red,green,blue);
	draw_set_color(color);
	draw_rectangle(color_rectangle.x,color_rectangle.y,color_rectangle.x+32,color_rectangle.y+32,false);
}