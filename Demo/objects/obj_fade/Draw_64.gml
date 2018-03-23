/// @desc Draw Fadeout

alpha = clamp(alpha + (fade *0.01), 0, 1);

	if(image_alpha == 1){
		fade = -1
	}
	
if(image_alpha == 0 && fade ==-1){
	instance_destroy();
}

draw_set_color(c_black);
draw_set_alpha(alpha);

xx = getViewX();
	yy = getViewY();
	width = getViewWidth();
	height = getViewHeight();
draw_rectangle(xx, yy, xx+width, yy+height, 0);
draw_set_alpha(1);

