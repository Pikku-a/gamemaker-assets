/// @description Go to room
var i_d = ds_map_find_value(async_load,"id");
if i_d == msg {
    if ds_map_find_value(async_load,"status") {
        var rm = ds_map_find_value(async_load,"result");
		var srm = asset_get_index(rm);
		if srm != -1 {
			room_goto(srm);
		}else{
			show_message_async(rm+": There is no room with this name.");
		}
    }
}