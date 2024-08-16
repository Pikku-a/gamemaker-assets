/// @description Position of the slider
//If hue bar
if assign == "Hue" {
minX = x-hue_bar.sprite_width/10+32;
maxX = x+hue_bar.sprite_width;
}
//if saturation bar
else if assign == "Sat" {
minX = x-saturation_bar.sprite_width/10+32;
maxX = x+saturation_bar.sprite_width;
}
//if value bar
else if assign == "Val" {
minX = x-value_bar.sprite_width/10+32;
maxX = x+value_bar.sprite_width;
}

