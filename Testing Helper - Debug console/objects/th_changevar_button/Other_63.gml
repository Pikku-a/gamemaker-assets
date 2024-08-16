/// @description 
var i_d = ds_map_find_value(async_load,"id");
if i_d == msg1 {
    if ds_map_find_value(async_load,"status") {
		objectvar = ds_map_find_value(async_load,"result");
		objectvar = asset_get_index(objectvar);
		if objectvar != -1 {
			msg2 = get_string_async("The variable to change:","");
		}else{
			msg = show_message_async("There is no object with that name.");
		}
    }
}else if i_d == msg2 {
	if ds_map_find_value(async_load,"status") {
		vartochange = ds_map_find_value(async_load,"result");
		//if variable_instance_exists(objectvar,vartochange) {
			msg3 = get_string_async("The new value of the variable:","");
		//}else{
		//	msg = show_message_async("The object has no such variable.");
		//}
	}
}else if i_d == msg3 {
	if ds_map_find_value(async_load,"result") {
		varvalue = ds_map_find_value(async_load,"result");
		if varvalue == "true" {
			varvalue = 1;
		}else if varvalue == "false" {
			varvalue = 0;
		}
		variable_instance_set(objectvar,vartochange,varvalue);
		msg = show_message_async("Variable changed.");
	}
}