/// @description Knockback and damage when collides with enemy attack
var dir,knock;
knock = 30; //power of knockback
dir = point_direction(phy_position_x,phy_position_y,other.x,other.y) +180 mod 360; //direction of knockback

//Knockback
phy_position_x += lengthdir_x(knock,dir);
phy_position_y += lengthdir_y(knock,dir);

//Destroy attack object
with(enemy_attack) {
	instance_destroy();
}

//Decrease hp
//Health - attack
hp -= example_enemy.atk;

