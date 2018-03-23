/// @description Insert description here
// You can write your code in this editor

var i =0;

repeat(buttons_main){
	draw_set_font(fnt_main);
	draw_set_color(c_white);
	draw_set_halign(fa_right);
	
	if(menu_main_index == i){
		draw_set_color(c_red);
	}
	
	draw_text(menu_x, menu_y + button_h*i, button_main[i]);
	i++;
}
