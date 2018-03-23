var accuracy = irandom(100);
var hit = obj_player.attack_damage_range;

if(accuracy >= 40){
	if(accuracy == 100){
		enemyID.current_health -= clamp(50, 0, 50);
		show_debug_message("Crit");
	}
	else{
		enemyID.current_health -= clamp(irandom(hit), 0, irandom(hit));
		show_debug_message("Hit");
	audio_play_sound(snd_range_hit, 1, false);
	}
}
else {
	audio_play_sound(snd_range_miss, 1, false);
	show_debug_message("Miss");
	}
	
	
playerAttacking = false;
step_counter = 0;
