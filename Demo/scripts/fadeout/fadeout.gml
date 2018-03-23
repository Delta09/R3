/// @desc fadeout(fade-color, fade-speed)
/// @arg room
/// @arg fade-speed
/// @arg fade-speed
/// @arg x
/// @arg y

var fade = instance_create_depth(x, y, 0, obj_fade);
fade.image_alpha = 0;
fade.fade_color = argument0;
fade.fade_speed = argument1;