/// @description Insert description here
// You can write your code in this editor

if(prompt){
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_set_font(fnt_main);
	draw_set_alpha(1);
	draw_text(x, y-40, "Press F");
}

if(isInteracting){
	draw_set_halign(fa_center)
	
	var i =0;
	draw_set_alpha(1)
	draw_set_color(c_black);
	draw_rectangle(getViewX(),getViewY(), getViewX()+getViewWidth(), getViewY()+getViewHeight(), false)
	draw_set_color(c_gray);
	draw_set_halign(fa_center)
	draw_rectangle(getViewX()+140, getViewY()+90, getViewX()+260, getViewY()+225, false)
	draw_set_color(c_dkgray);
	draw_set_halign(fa_center)
	draw_rectangle(getViewX()+150, getViewY()+94, getViewX()+250, getViewY()+119, false)
	draw_set_color(c_white);
	draw_text(getViewX()+200, getViewY()+100, final);
	repeat(keypad_keys){
		draw_set_alpha(1)
		draw_set_font(fnt_fight);
		draw_set_color(c_white);
	
		if(keypad_index == i){
			draw_set_color(c_red);	
		}
		
		if((i%3) == 0){
			y_push = (key_h*i)/3;
			x_push = 0;
		}
		
		draw_text(getViewX()+140 + x_push+key_h, getViewY()+90 + y_push+key_h, keypad_key[i]);
		x_push += key_h
		i++;
		show_debug_message("drawing: " + string(i));
	}
	show_debug_message("i FINAL: " + string(i));
}
draw_set_color(c_white);