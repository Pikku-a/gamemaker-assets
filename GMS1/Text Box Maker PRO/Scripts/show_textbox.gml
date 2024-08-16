///show_textbox(Text,CharacterName,Colour,TextColour,OutlineColour,Alpha,Font,Sprite,Option1,Option2,Option3,SelectedTextColour)

//If view height is lower than 600 make things smaller -DISABLED-
if view_hview[view_current] < 600 {
var smaller = 50;
}else{
var smaller = 50;
}

//If there is a sprite, scale things to fit it
if argument7 != noone {
var sprite_w = 128;
}else{
var sprite_w = 0;
}

//Rectangle
draw_set_colour(argument2);
draw_set_alpha(argument5);
draw_rectangle(view_xview+10,view_yview+view_hview-187+smaller,view_xview+view_wview-10,view_yview+view_hview-10,false);

//Outline
if argument4 != noone {
draw_set_colour(argument4);
draw_rectangle(view_xview+10,view_yview+view_hview-187+smaller,view_xview+view_wview-10,view_yview+view_hview-10,true);
}

//Draw sprite
if argument7 != noone {
draw_sprite(argument7,0,view_xview+10,view_yview+view_hview-187+smaller);
}

//Text
draw_set_colour(argument3);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_font(argument6);
draw_text_ext(view_xview+20+sprite_w,view_yview+view_hview-177+smaller,argument0,35,view_wview-(30+sprite_w));

//Characters name rectangle
if argument1 != noone {
draw_set_colour(argument2);
draw_set_alpha(argument5);
draw_rectangle(view_xview+10,view_yview+view_hview-257+smaller*1.3,view_xview+300,(view_yview+view_hview-180+smaller)-10,false);
}

//Characters name rectangle outline
if argument1 != noone {
if argument4 != noone {
draw_set_colour(argument4);
draw_rectangle(view_xview+10,view_yview+view_hview-257+smaller*1.3,view_xview+300,(view_yview+view_hview-180+smaller)-10,true);
}
}

//Characters name
if argument1 != noone {
draw_set_colour(argument3);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_text(view_xview+160,view_yview+view_hview-247+smaller*1.2,argument1);
}

//Show options
if options_show = true {
show_options(argument2,argument3,argument11,argument4,argument5,argument6,argument8,argument9,argument10);
}




draw_set_halign(fa_left);
