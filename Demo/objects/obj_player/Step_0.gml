/// @desc Movement

/// @desc Every Step
get_input();
script_execute(state);
if(exitKey){
	game_end();
}

depth = -y;

if(inCombat){
	walking = false;
}
else if((hspd !=  0 || vspd != 0) && !walking){
    walking = true;
    if(!audio_is_playing(snd_walk)){
		audio_sound_pitch(snd_walk, 2);
        audio_play_sound(snd_walk, 1, true);
    }
} else if(hspd == 0 && vspd == 0 && walking){
    audio_pause_sound(snd_walk);
} else if((hspd !=  0 || vspd != 0) && walking){
    audio_resume_sound(snd_walk);
}
