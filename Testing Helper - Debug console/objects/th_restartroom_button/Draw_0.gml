/// @description Colour
draw_self();
image_blend = test_helper.button_colour;

draw_set_font(font_courier_new);
draw_set_colour(test_helper.button_text_colour);
draw_set_halign(fa_center);
draw_text(x,y-8,"Restart Room");