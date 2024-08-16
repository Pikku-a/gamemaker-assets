/// @function health_system_hearts(sprite);
/// @description Draws health system with hearts
/// @param sprite

function health_system_hearts(argument0) {

	//Hp can't go over max hp or below 0.
	hp = (clamp(hp,0,maxhp));

	var xoffset = 40;

	//Draw hearts background
	for (var i = 0; i< maxhp; i++) {
		draw_sprite_ext(argument0,1,xstart+(xoffset*i),ystart,1,1,0,c_black,.3);
	}

	//Draw hearts
	for (var i = 0; i< hp; i++) {
		draw_sprite(argument0,1,xstart+(xoffset*i),ystart);
	}

}
