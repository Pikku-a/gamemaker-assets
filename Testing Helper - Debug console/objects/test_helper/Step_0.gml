/// @description

//Open testing helper
if keyboard_check_pressed(vk_control) || keyboard_check_pressed(vk_f1) {
	//Show or not
	if show == true {
		show = false;
	}else{
		show = true;
		if view_enabled {
			x = camera_get_view_x(view_get_camera(view_camera[view_current]))+sprite_width/2;
			y = camera_get_view_y(view_get_camera(view_camera[view_current]))+sprite_height/2;
		}else{
			x = sprite_width/2;
			y = sprite_height/2;
		}
	}
}


//Move it with mouse
if mouse_check_button(mb_left) {
	//if writing == false /*&& pressing = false*/ {
		if distance_to_point(mouse_x,mouse_y)<= sprite_width/10 {
			x = mouse_x;
			y = mouse_y;
		}
	//}
}


//Destroy some objects & reset variables when testing helper is not shown
if show == false {
	movemode = false;
	advanced_mode = false;
	instance_destroy(th_arrow_left);
	instance_destroy(th_arrow_right);
	instance_destroy(th_restartroom_button);
	instance_destroy(th_gotoroom_button);
	instance_destroy(th_search_button);
	instance_destroy(th_createobj_button);
	instance_destroy(th_changevar_button);
	instance_destroy(th_movemode_button);
	/*instance_destroy(advanced_button);
	instance_destroy(advanced_cmd);*/
}


//Check how many objects are in the room
objectsnumber = 0;
with(all) {
	test_helper.objectsnumber += 1;
}
objectsnumber -= 9; //Don't count the objects made by testing helper

//Move Mode
if movemode == true { //Make this get_string_async function and only show somewhere the object not to move
	if movemode_asked == false {
		movemode_asked = true;
		msg_mm1 = get_string_async("Type an object you don't want to accidentally move (for example a wall object):","");
	}
	
	with(all) {
		var ob = object_get_name(object_index);
		var obb = object_get_name(test_helper.ob1);
		if ob != obb {
			if mouse_check_button(mb_left) {
				if distance_to_point(mouse_x,mouse_y)<25 {
					x = mouse_x;
					y = mouse_y;
					/*//If you use physics, you need this (I haven't tested this yet):
					phy_position_x = mouse_x;
					phy_position_y = mouse_y;
					*/
				}
			}
		}
		//Get an objects name
		if mouse_check_button(mb_right) {
			if distance_to_point(mouse_x,mouse_y)<15 {
				var name = object_get_name(object_index);
				show_message_async(name);
			}
		}
	}
}

/*/Advanced mode
if advanced_mode == true {
	objectsnumber --; //Don't count advanced_cmd
	if !instance_exists(advanced_cmd) {
		instance_create_layer(x+sprite_width/2+10,y,"hud",advanced_cmd);
	}
}