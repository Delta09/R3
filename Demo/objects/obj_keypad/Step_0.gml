/// @description Insert description here
// You can write your code in this editor
get_input();
var inst;
inst = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player, false, true) 

if (inst == inst_check){
	prompt = true;
	if(select){
		instance_deactivate_all(true);
		alarm[1]= 1;
		prompt = false;
		
	}
}
else{
	prompt = false;
	}
	
if(isInteracting){
	//return either 0 (both or nothing pressed), 1 (down), -1(up)
	keypad_move_UD = moveUD
	keypad_move_LR = moveLR

	keypad_index += keypad_move_UD*3;
	keypad_index += keypad_move_LR;

	//keep selected on the first if moving out of range
	if(keypad_index < 0)keypad_index = keypad_index+3;

	//keep selected on the last if moving out of range
	if(keypad_index > keypad_keys-1)keypad_index = keypad_index-3;

	if(keypad_index == 9){
		keypad_index = 10}

	last_selected_keypad = keypad_index;

	if(select && !inputDisabled){
		audio_play_sound(snd_ui_select, 1, 0);
		switch(keypad_index){
		
		case 0:
				 
				input = "1"
				break;
	
		case 1:
				input = "2"
				break;
				
		case 2:
				input = "3"
				break;
				
		case 3:
				input = "4"
				break;
				
		case 4:
				input = "5"
				break;
				
		case 5:
				input = "6"
				break;
				
		case 6:
				input = "7"
				break;
				
		case 7:
				input = "8"
				break;
				
		case 8:
				input = "9"
				break;
				
		case 9:
				//blank
				break;
				
		case 10:
				input = "0"
				break;
		
		case 11:
				isInteracting = false;
				prompt=true;
				instance_activate_all();
				break;
		
		}
	}
	final = string_insert(input, final, string_length(final)+1)
	input=""
	
	//Check to see if correct pin
	if(final == key){
		audio_play_sound(snd_unlock, 1, 0);
		isInteracting = false;
		instance_destroy();
		instance_activate_all();
		instance_destroy(obj_door_elevator);
	}
	
	//Check to see if incorrect pin 
	else if(string_length(final) == 4){
		inputDisabled = true;
		final = "Incorrect Pin";
		alarm[0] = 120;
	}
}

show_debug_message(input);
