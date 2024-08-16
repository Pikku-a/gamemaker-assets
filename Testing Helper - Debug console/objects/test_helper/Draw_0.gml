/// @description

//Control1
if show == true {
	
	draw_set_font(font_courier_new);
	
	//The rectangle
	draw_set_colour(back_colour);
	draw_rectangle(x-sprite_width/2,y-sprite_height/2,x+sprite_width/2,y+360-40,false);
	
	//Title
	draw_set_colour(button_colour);
	draw_rectangle(x-sprite_width/2,y-sprite_height/2,x+sprite_width/2,y+sprite_height/2+10,false);
	draw_set_halign(fa_center);
	draw_set_colour(button_text_colour);
	draw_text(x,y,"TESTING HELPER");

	//Part 1 | Room managing
	draw_set_colour(outline_colour);
	draw_rectangle(x-sprite_width/2,y+sprite_height/2+10,x+sprite_width/2,y+125,true);
	draw_set_colour(text_colour);
	draw_text(x,y+35,"ROOM");
	draw_text(x,y+60,roomname);
	if instance_number(th_arrow_left) == 0 {
		instance_create_layer(x-sprite_width/3,y+70,"hud",th_arrow_left);
		instance_create_layer(x+sprite_width/3,y+70,"hud",th_arrow_right);
	}
	
	//Go to room button
	if !instance_exists(th_gotoroom_button) {
		instance_create_layer(x,y,"hud",th_gotoroom_button);
	}
	
	//Restart room button
	if !instance_exists(th_restartroom_button) {
		instance_create_layer(x,y+105,"hud",th_restartroom_button);
	}

	
	//Part 2 | Objects
	
	//Object amount
	draw_set_colour(outline_colour);
	draw_rectangle(x-sprite_width/2,y+125,x+sprite_width/2,y+215,true);
	draw_set_colour(text_colour);
	draw_text(x,y+135,"OBJECTS IN ROOM");
	draw_text(x,y+155,string(objectsnumber));
	
	//Check if object exists
	if !instance_exists(th_search_button) {
		instance_create_layer(x,y,"hud",th_search_button);
	}
	
	//Create object
	if !instance_exists(th_createobj_button) {
		instance_create_layer(x,y,"hud",th_createobj_button);
	}
	
	//Change variable button
	if !instance_exists(th_changevar_button) {
		instance_create_layer(x,y,"hud",th_changevar_button);
	}


	// Part 3 | Move Mode
	if !instance_exists(th_movemode_button) {
		instance_create_layer(x,y+215,"hud",th_movemode_button);
	}
	draw_set_colour(outline_colour);
	draw_rectangle(x-sprite_width/2,y+215,x+sprite_width/2,y+275,true);
	draw_set_colour(text_colour);
	draw_text(x,y+220,"MOVE MODE");


	// Part 4 | FPS counter
	draw_set_colour(outline_colour);
	draw_rectangle(x-sprite_width/2,y+275,x+sprite_width/2,y+320,true);
	draw_set_colour(text_colour);
	draw_text(x-50,y+280,"FPS");
	draw_text(x-50,y+300,string(fps));
	draw_text(x+30,y+280,"FPS REAL");
	draw_text(x+30,y+300,fps_real_);
	
	/*/Part 5 | Advanced
	draw_set_color(outline_colour);
	draw_rectangle(x-sprite_width/2,y+280,x+sprite_width/2,y+320,true);
	if !instance_exists(advanced_button) {
		instance_create_layer(x,y,"hud",advanced_button);
	}*/

#region If object_advanced settings
	/*if object_advanced == true {
		if !instance_exists(writebox) {
			instance_create_layer(x+sprite_width/2+10,y+205,"hud",writebox); //MAYBE INSTEAD OF CREATING AN OBJECT DRAW A WHITE RECTANGLE
		}

		draw_set_colour(c_white);
		draw_rectangle(writebox.x,writebox.y,writebox.x+180,writebox.y+32,false);
	
		//Writing on the box
		if writing == true { //Remove this and make writing automatic if object_advanced is true?
			draw_text(x-sprite_width/2.2,y+185,"CHECK FOR OBJECT");
			draw_set_halign(fa_left);
			draw_set_colour(c_black);
			draw_text(writebox.x+2,writebox.y+2,string(keyboard_string));

			//Check if the object exists when pressing enter
			if keyboard_check(vk_enter) {
				global.object = asset_get_index(keyboard_string);
				var n = keyboard_string;
			
				show_debug_message(string(global.object));
				show_debug_message(string(test_helper.object_index));
			
				if instance_exists(global.object) {
					with(all) {
						var name = object_index;
						if name = global.object {
						
							var xpos = x;
							var ypos = y;
							show_message(string(n)+" "+string(global.num)+": Object is in room. \nPosition x: "+string(xpos)+"\nPosition y: "+string(ypos));
							global.num+=1;
						}
					}
				}else{
					show_message(string(n)+": This object doesn't exists in this room right now.");
				}
				writing = false;
			}
		}
	}*/
	#endregion

#region If move mode
	/*if movemode == true { //Make this get_string_async function and only show somewhere the object not to move
		draw_set_colour(back_colour);
		draw_rectangle(x+sprite_width/2+10,y-sprite_height/2,x+sprite_width/2+210,y+110,false);
		draw_set_colour(text_colour);
		draw_rectangle(x+sprite_width/2+10,y-sprite_height/2,x+sprite_width/2+210,y+110,true);
		draw_set_halign(fa_left);
		draw_text(x+sprite_width/2+20,y,"Type an object you don't want to\naccidentally move (for example a wall object):");
		if !instance_exists(writebox2) {
			instance_create_layer(x,y,"hud",writebox2);
		}
		//Draw a box to write to
		draw_set_colour(c_white);
		draw_rectangle(x+sprite_width/2+25,y-sprite_height/2+60,x+sprite_width/2+185,y+92,false);

		if writing2 == true {
			draw_set_colour(c_black);
			draw_text(writebox2.x+20,writebox2.y+sprite_height/2+2,string_hash_to_newline(keyboard_string));

			if keyboard_check(vk_enter) { //Move this to step event?
				var ob = asset_get_index(keyboard_string);
				if ob != -1 {
					with(ob) {
						ob1 = ob;
						show_message(keyboard_string+": Will not be moved.");
					}
				}else{
					show_message(keyboard_string+": There is no object with this name.");
				}
			}
		}
	}*/

#endregion

}