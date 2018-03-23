/// @description Begin Battle Sequence
previous_room = room;
show_debug_message(string("Room: " + room_get_name(previous_room)));

enemyID = other.id.object_index;
show_debug_message(string("Enemy: " + object_get_name(enemyID)));

	

obj_BattleController.alarm[0] = 1;
audio_stop_all();

instance_create_layer(0,0, "Warp", obj_fade);
audio_play_sound(snd_battle_transition, 1, 0);
audio_sound_pitch(snd_battle_transition, 2);
room_goto(rm_battle);

inCombat = true;
walking = false;
beforebattle_X = x;
beforebattle_Y = y;

x = 61;
y = 110;

image_speed = 0;
image_index = 0;

sprite_index = IDLE;
image_speed = 1;


