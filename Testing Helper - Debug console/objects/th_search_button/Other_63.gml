/// @description 
var i_d = ds_map_find_value(async_load,"id");
if i_d == msg {
    if ds_map_find_value(async_load,"status") {
        test_helper.search_obj = ds_map_find_value(async_load,"result"); //Change this to a temporal variable?
		var sobj = asset_get_index(test_helper.search_obj);
		if sobj != -1 {
			with(test_helper) {
				if instance_exists(sobj) {
					with(all) {
						var name = object_get_name(object_index);
						if name == test_helper.search_obj {
							var xpos = x;
							var ypos = y;
							show_message_async(test_helper.search_obj+" ("+string(test_helper.num)+"): Object is in room. \nPosition x: "+string(xpos)+"\nPosition y: "+string(ypos));
							test_helper.num+=1;
						}
					}
				}else{
					show_message_async(string(test_helper.search_obj)+": This object doesn't exists in this room right now.");
				}
			}
		}else{
			show_message_async(string(test_helper.search_obj)+": There is no object with this name.");
		}
    }
}