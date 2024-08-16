//dialog(charactername,text,colour,textcolour,font);
if (showdialog = true) {
draw_set_colour(argument2);
draw_rectangle(30,630,950,738,false);

draw_rectangle(30,585,250,625,false);

draw_set_colour(argument3);
draw_set_font(argument4);
draw_set_halign(fa_left);
draw_text_ext(40,640,argument1,20,900);

draw_set_halign(fa_center);
draw_text(145,595,argument0);
}
