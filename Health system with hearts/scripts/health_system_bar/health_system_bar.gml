/// @function health_system_bar(MinColour,MaxColour,BackColour,decoration?);
/// @description Draws health system with health bar
/// @param MinColour
/// @param MaxColour
/// @param BackColour
/// @param decoration?

function health_system_bar(argument0, argument1, argument2, argument3) {

	//Hp can't go over max hp or below 0.
	hp = (clamp(hp,0,maxhp));

	//Draw health bar
	draw_healthbar(xstart,ystart,xstart+200,ystart+20,hp,argument2,argument0,argument1,0,true,true);

	//Draw decoration
	if argument3 == true {
		draw_sprite_ext(sprite_heart,0,xstart,ystart,1.5,1.5,0,c_white,1);
	}

}
