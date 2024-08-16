/// @description Move towards player and attack

//Move towards player if player is near
if instance_exists(example_player) {
	if distance_to_object(example_player)<200 {
		physics_move_towards(example_player);
	}
}


//Attack
if place_meeting(x,y,example_player) {
	instance_create_layer(x,y,"instances",enemy_attack);
}


//Destroy when hp is 0
if (hp = 0) {
	instance_destroy();
}

