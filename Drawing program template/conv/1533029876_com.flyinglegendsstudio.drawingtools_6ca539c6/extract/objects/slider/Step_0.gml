/// @description Position
//Mouse can move it
if held = true {
	x = mouse_x;
	//If a color is picked, make it not picked
	control.picked_color = noone;
}
//Don't go far of the bar
if (x<minX) { x = minX }
if (x>maxX) { x = maxX }

