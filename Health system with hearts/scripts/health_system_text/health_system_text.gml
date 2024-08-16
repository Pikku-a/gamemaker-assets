/// @function health_system_text(colour1,colour2,font);
/// @description Draws health system with text
/// @param colour1
/// @param colour2
/// @param font

function health_system_text(argument0, argument1, argument2) {

	//Hp can't go over max hp or below 0.
	hp = (clamp(hp,0,maxhp));

	//Draw health with text
	draw_set_font(argument2);
	draw_set_halign(fa_left);
	draw_set_colour(argument0);
	draw_text(xstart,ystart,"HP: ");
	draw_set_colour(argument1);
	draw_text(xstart+string_width("HP: ")+20,ystart,string(hp));

}
