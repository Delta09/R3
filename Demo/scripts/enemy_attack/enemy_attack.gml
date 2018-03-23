var accuracy = irandom(100);
var hit = enemyID.melee_damage;
//var hit_r = enemyID.range_damage;

if(accuracy >= 40){
	if(accuracy == 100){
		obj_player.current_health -=  clamp(hit*2, 0, hit*2);
		show_debug_message("Crit");
	}
	else{
		obj_player.current_health -=  clamp(hit, 0, hit);
		show_debug_message("Hit");
	}
	
	audio_play_sound(snd_melee_hit, 1, false);
	}
else{
	audio_play_sound(snd_range_miss, 1, false);
	show_debug_message("Miss");
}

playerAttacking = true;

