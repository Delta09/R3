/// @description Draw Game GUI
//draw_self();
get_input();
xx = getViewX();
yy = getViewY();
width = getViewWidth();
height = getViewHeight();

if(Debug){
	draw_set_color(c_black);
	draw_rectangle(getViewX(), getViewY(), getViewX()+100, getViewY()+50, false);
	draw_set_halign(fa_left);
	draw_set_font(fnt_debug);
	draw_set_color(c_white);
	//Display View x
	draw_text(getViewX(), getViewY(), "View X: " + string(getViewX()));// + string(getViewX())));

	//Display View y
	draw_text(getViewX(), getViewY()+20, "View Y: " + string(getViewY()));// + string(getViewY())));
}

if(isPaused){
	
	draw_set_color(c_black);
	draw_rectangle(xx, yy, xx+width, yy+height, 0);
	show_debug_message("Camera X: " + string(xx));
	show_debug_message("Camera Y: " + string(yy));
	show_debug_message("height: " + string(height));
	
	var i =0;

	repeat(buttons_pause){
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_set_font(fnt_main);
		draw_set_color(c_white);
		draw_set_alpha(1);
		if(menu_pause_index == i){
			draw_set_color(c_red);
		}
	
		draw_text(xx+200, (yy+125 + button_h*(i)), button_pause[i]);
		i++;
	}
}