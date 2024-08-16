/// @description Draw the surface
draw_set_color(c_white);
draw_rectangle(32,32,732,632,false);
draw_surface(surface,32,32);


//Draw outlines to the surface
draw_set_colour(c_black);
draw_rectangle(32,32,732,632,true);