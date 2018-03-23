/// @desc Fadeout to next room
instance_create_layer(0,0, "Warp", obj_fade);
room_goto(targetRoom);

obj_player.x = targetX;
obj_player.y = targetY;
obj_player.sprite_index = spr_direction;


