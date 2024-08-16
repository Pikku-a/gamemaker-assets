/// @description Variables


//----------Style settings----------//		Light theme		Dark theme		Cmd theme
text_colour = c_black;						//c_black		c_white			c_green
button_text_colour = c_black;				//c_black		c_black			c_white
back_colour = c_white;						//c_white		c_black			c_black
outline_colour = c_black;					//c_black		c_white			c_green
button_colour =	c_ltgray;					//c_ltgray		c_ltgray		c_dkgray
//----------Style settings----------//


show = false;
roomname = room_get_name(room);
objectsnumber = 0;
search_obj = noone;
num = 1;
//writing = false;
writing2 = false;
xprev = x;
yprev = y;
pressing = false;
movemode = false;
movemode_asked = false;
msg_mm1 = noone;
ob1 = noone; //If more objects are needed to not move, make this an array
advanced_mode = false;
//object_advanced = false; //Advanced object options
//global.object = noone;
//global.ob2 = noone;

fps_real_ = string(fps_real);

alarm[1] = 20;

