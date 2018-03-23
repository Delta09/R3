/// @description Conditions
get_input();

///Battle Menu navigation
if(inCombat){
	if(inCombat && playerAttacking){
		//return either 0 (both or nothing pressed), 1 (right), -1(left)
		fight_option_move = moveLR;


		fight_option_index += fight_option_move;

		//keep selected on the last if moving out of range
		if(fight_option_index <0)fight_option_index = fight_options-1;

		//keep selected on the first if moving out of range
		if(fight_option_index > fight_options-1)fight_option_index = 0;

		//play sound on menu change
		if(fight_option_index != last_selected_fight) audio_play_sound(snd_ui_select,1,false)


		last_selected_fight = fight_option_index;
	}
	
	///Battle Menu Selection
	if(select && playerAttacking){
		audio_play_sound(snd_ui_choose,1,false)
		switch(fight_option_index){

			///Player Melee Attack
			case 0:
					audio_play_sound(snd_ui_choose,1,false)
					script_execute(player_attack_melee);
					break;
	
			///Player Range
			case 1:
					audio_play_sound(snd_ui_choose,1,false)
					script_execute(player_attack_range);
					break;
	
			///Player Run
			case 2:
					ranAway = true;
					show_debug_message("Run");
					break;
		}
	}
	
	
	///Enemy Is Attacking
	if(!playerAttacking){
		enemy_attack();
	}
	
	///Check Win 
	if (enemyID.current_health <=0){
		with(enemyID)
			instance_destroy();
		room_goto(obj_player.previous_room)
		alarm[2] = 1;
		obj_player.x = obj_player.beforebattle_X;
		obj_player.y = obj_player.beforebattle_Y;
		obj_player.sprite_index = spr_player_right;
		instance_create_layer(0, 0, "Warp", obj_fade);
		inCombat = false;
		obj_player.current_health = 100;
	
	}
	
	///Run from Battle
	if(ranAway){
		with(enemyID)
			instance_destroy();
		instance_create_layer(0, 0, "Warp", obj_fade);
		room_goto(obj_player.previous_room)
		obj_player.x = obj_player.beforebattle_X-20;
		obj_player.y = obj_player.beforebattle_Y;
		obj_player.sprite_index = spr_player_right;
		inCombat = false;
		ranAway = false;
	}
	
	///Check Loss 
	if (obj_player.current_health <=0){
		with(obj_player)
			instance_destroy();
		alarm[1] = 240;
		instance_create_layer(0,0, "Warp", obj_fade);
		room_goto(rm_gameOver);
		
		inCombat = false;
		
	}	
}
