
var inst;
inst = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player, false, true) 

if (inst == inst_check){
	prompt = true;
}else{
	prompt = false
	}


show_debug_message("prompt: " + string(prompt));