var accuracy = irandom(100);
var hit = obj_player.attack_damage_melee;

if(accuracy >= 30){
	if(accuracy == 100){
		
		enemyID.current_health -=  clamp(hit*2, 0, hit*2);
		
		//show_damage();
		show_debug_message("Crit");
	}
	else{
		//obj_player.x += 30;
		enemyID.current_health -=  clamp(hit, 0, hit);
		show_debug_message("Hit");
	}
	
	audio_play_sound(snd_melee_hit, 1, false);
}

else{
	
	audio_play_sound(snd_range_miss, 1, false);
	
	show_debug_message("Miss");
}

playerAttacking = false;
step_counter = 0;