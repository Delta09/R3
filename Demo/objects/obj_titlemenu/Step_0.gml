/// @description Insert description here
// You can write your code in this editor
get_input();

//return either 0 (both or nothing pressed), 1 (down), -1(up)
menu_move = moveUD

menu_main_index += menu_move;

//keep selected on the last if moving out of range
if(menu_main_index <0)menu_main_index = buttons_main-1;

//keep selected on the first if moving out of range
if(menu_main_index > buttons_main-1)menu_main_index = 0;

//play sound on menu change
if(menu_main_index != last_selected_main) audio_play_sound(snd_ui_select,1,false)


last_selected_main = menu_main_index;

if(select){
	switch(menu_main_index){

	case 0:
	audio_play_sound(snd_ui_choose,1,false);
	audio_stop_all();
	room_goto(rm_lvl1);
	break;
	
	case 1:
	game_end();
	show_debug_message("Quit");
	break;
	
	}
}