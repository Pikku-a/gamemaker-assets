/// @description Create object
var i_d = ds_map_find_value(async_load,"id");
if i_d == msg {
    if ds_map_find_value(async_load,"status") {
        var ob = ds_map_find_value(async_load,"result");
		var sobj = asset_get_index(ob);
		if sobj != -1 {
			if !layer_exists("instances") {
				layer_create(-100,"instances");
			}
			instance_create_layer(x+50,y,"instances",sobj);
		}else{
			show_message_async(ob+": There is no object with this name.");
		}
    }
}