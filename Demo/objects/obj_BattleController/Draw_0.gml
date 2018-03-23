/// @description Battle GUI

if(inCombat){
	draw_set_alpha(1)
	draw_set_color(c_black);
	draw_rectangle(0, getViewY(), room_width, 26, false)
	
	draw_set_font(fnt_fight)
	
	draw_set_color(c_white);
	
	//Player Name
	draw_text(2, 1, obj_player.firstName)
	
	//player health
	draw_rectangle(2, 14.5, 10+70, 16.5, false)
	draw_healthbar(2, 14.5, 10+70, 16.5, (obj_player.current_health / obj_player.max_health)*100, c_black, c_red, c_green, 0, 1, 1);
	draw_text(2	, 17, string(obj_player.current_health) +"/100" );

	draw_set_halign(fa_right);
	
	//Enemy Name
	draw_text(243, 1, enemyID.name)
	
	//Enemy Health
	draw_rectangle(243-70, 14.5, 243, 16.5, false)
	draw_healthbar(243-70, 14.5, 243, 16.5, (enemyID.current_health / enemyID.max_health)*100, c_black, c_red, c_green, 1, 1, 1);
	draw_text(243, 17, string(enemyID.current_health) +"/100" );
	
	draw_set_halign(fa_left);
	
	var i =0;
	draw_set_alpha(1)
	draw_set_color(c_black);
	draw_rectangle(0, 137, room_width, room_height, false)

	repeat(fight_options){
	//draw_set_valign(fa_top);
	draw_set_font(fnt_fight);
	draw_set_color(c_white);
	
	if(fight_option_index == i){
		draw_set_color(c_blue);	
	}
	
	draw_text(fight_x + fight_h*i, fight_y, fight_option[i]);
	i++;
}
	
	
}