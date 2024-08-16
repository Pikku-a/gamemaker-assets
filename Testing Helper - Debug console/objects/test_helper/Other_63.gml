/// @description Movemode stuff
var i_d = ds_map_find_value(async_load,"id");
if i_d == msg_mm1 {
    if ds_map_find_value(async_load,"status") {
        var ob = ds_map_find_value(async_load,"result");
		var ob_id = asset_get_index(ob);
		if ob_id != -1 {
			ob1 = ob_id;
			show_message_async(ob+": Will not be moved.");
		}else{
			show_message_async(ob+": There is no object with this name.");
		}
    }
}