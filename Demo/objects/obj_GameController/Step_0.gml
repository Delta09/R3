/// @description Conditions
get_input();

if(pauseKey){
	show_debug_message("Pressed Pause");
	if(!isPaused ){
		isPaused = true;
		instance_deactivate_all(true);

	}
	else{
		isPaused = false;
		instance_activate_all();
	}
	
}

if(isPaused){
	//return either 0 (both or nothing pressed), 1 (down), -1(up)
	menu_move = moveUD;

	menu_pause_index += menu_move;

	//keep selected on the last if moving out of range
	if(menu_pause_index <0)menu_pause_index = buttons_pause-1;

	//keep selected on the first if moving out of range
	if(menu_pause_index > buttons_pause-1)menu_pause_index = 0;

	//play sound on menu change
	if(menu_pause_index != last_selected_pause) audio_play_sound(snd_ui_select,1,false)


	last_selected_pause = menu_pause_index;

	if(select){
		switch(menu_pause_index){

			case 0:
				audio_play_sound(snd_ui_choose,1,false)
				isPaused = false;
				instance_activate_all();
				break;

			case 1:
				audio_play_sound(snd_ui_choose,1,false)
			
				game_restart();
				break;

		}
	}
}