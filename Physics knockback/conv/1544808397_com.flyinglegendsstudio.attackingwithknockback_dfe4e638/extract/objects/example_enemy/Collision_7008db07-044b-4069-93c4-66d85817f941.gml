/// @description Knockback and damage
var dir,knock;
knock = 40; //power of knockback
dir = point_direction(phy_position_x,phy_position_y,other.x,other.y) +180 mod 360; //direction of knocback

//Knockback
phy_position_x += lengthdir_x(knock,dir);
phy_position_y += lengthdir_y(knock,dir);


//Destroy attack object
with(player_attack) {
	instance_destroy();
}

//Decrease hp
hp -= example_player.atk;