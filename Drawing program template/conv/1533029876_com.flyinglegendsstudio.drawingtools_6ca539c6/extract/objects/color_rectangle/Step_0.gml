///@description Show current color
var h = hue_bar.sliders.x-hue_bar.sliders.dist;
var s = saturation_bar.sliders.x-saturation_bar.sliders.dist;
var v = value_bar.sliders.x-value_bar.sliders.dist;

image_blend = make_color_hsv(h,s,v);

