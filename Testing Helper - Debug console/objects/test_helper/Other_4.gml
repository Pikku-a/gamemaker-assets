/// @description Initialize

//Create hud layer if it doesn't exist
if !layer_exists("hud") {
	layer_create(-1000,"hud");
}

//Get the room name
roomname = room_get_name(room);

/*/How many objects are in the room
objectsnumber = 0;
with(all) {
	test_helper.objectsnumber += 1;
}