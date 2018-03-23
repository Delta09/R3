/// @description Insert description here
// You can write your code in this editor
var inst;
inst = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player, false, true) 

if (inst == inst_check){
	inputDisabled = true;
	ending = true;
	with(obj_player)
		instance_destroy();
	audio_stop_all();
	alarm[0] = 600;
	instance_create_layer(0,0, "Warp", obj_fade);
	room_goto(rm_end);
	
}
	
if (ending){
	alpha_text += 0.006;
}

//show_debug_message("Instance-: " + string(inst));
//show_debug_message("ending: " + string(ending));
show_debug_message("alpha: " + string(alpha_text));