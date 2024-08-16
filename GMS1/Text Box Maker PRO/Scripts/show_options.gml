///show_options(colour,textcolour,selectedtextcolour,outlinecolour,alpha,font,option1,option2,option3)

//If there are options
if argument6 != noone {

//Count options
var option_count = 0;
if argument6 != noone and argument7 != noone and argument8 != noone {
option_count = 3;
}else{
if argument6 != noone and argument7 != noone {
option_count = 2;
}else{
option_count = 1;
}
}

//Draw box
draw_set_alpha(argument4);
draw_set_colour(argument0);
draw_rectangle(view_xview+(view_wview/2)-200,view_yview+(view_hview/2)-150,view_xview+(view_wview/2)+200,view_yview+(view_hview/2),false);

//Draw outline
if argument3 != noone {
draw_set_alpha(1);
draw_set_colour(argument3);
draw_rectangle(view_xview+(view_wview/2)-200,view_yview+(view_hview/2)-150,view_xview+(view_wview/2)+200,view_yview+(view_hview/2),true);
}

//Draw option 1
//Font
draw_set_font(argument5);
//Colour
if selected = "option1" {
draw_set_colour(argument2);
}else{
draw_set_colour(argument1);
}
//Halign
draw_set_halign(fa_center);
//Text
if option_count = 3 {
draw_text(view_xview+(view_wview/2),view_yview+(view_hview/2)-140,argument6);
}else{
if option_count = 2 {
draw_text(view_xview+(view_wview/2),view_yview+(view_hview/2)-115,argument6);
}else{
draw_text(view_xview+(view_wview/2),view_yview+(view_hview/2)-95,argument6);
}
}

//Draw option 2
if argument7 != noone {
//Font
draw_set_font(argument5);
//Colour
if selected = "option2" {
draw_set_colour(argument2);
}else{
draw_set_colour(argument1);
}
//Halign
draw_set_halign(fa_center);
//Text
if option_count = 3 {
draw_text(view_xview+(view_wview/2),view_yview+(view_hview/2)-95,argument7);
}else{
if option_count = 2 {
draw_text(view_xview+(view_wview/2),view_yview+(view_hview/2)-60,argument7);
}
}
}

//Draw option 3
if argument8 != noone {
//Font
draw_set_font(argument5);
//Colour
if selected = "option3" {
draw_set_colour(argument2);
}else{
draw_set_colour(argument1);
}
//Halign
draw_set_halign(fa_center);
//Text
draw_text(view_xview+(view_wview/2),view_yview+(view_hview/2)-50,argument8);
}

//Enable action (changing option)

//If up
if keyboard_check_pressed(vk_up) {
//If 2 options
if argument7 != noone and argument8 = noone {
switch(selected) {

case "option1":
selected = "option2";
break;

case "option2":
selected = "option1";
break;
}
}
//If 3 options
if argument8 != noone {
switch(selected) {

case "option1":
selected = "option3";
break;

case "option2":
selected = "option1";
break;

case "option3":
selected = "option2";
break;
}
}
}

//If down
if keyboard_check_pressed(vk_down) {
//If 2 options
if argument7 != noone and argument8 = noone {
switch(selected) {

case "option1":
selected = "option2";
break;

case "option2":
selected = "option1";
break;
}
}
//If 3 options
if argument8 != noone {
switch(selected) {

case "option1":
selected = "option2";
break;

case "option2":
selected = "option3";
break;

case "option3":
selected = "option1";
break;
}
}
}

}
