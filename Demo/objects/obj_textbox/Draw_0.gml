//var vx = camera_get_view_x(view_camera[0]);
//var vy = camera_get_view_y(view_camera[0]) +620;

//show_debug_message(vy)
//show_debug_message(vx)
draw_sprite(spr_textbox, 0, 0, 403);


draw_set_font(fnt_textbox_name);
draw_set_color(c_white);

charCount += 1;
if(charCount < string_length(text[page])){
textPart = string_copy(text[page], 1, charCount);
}

//draw name 
draw_text(0+x_buffer, 403+y_buffer, name);



//draw part of the text dialogue
draw_set_font(fnt_textbox_dialogue);
draw_text(0+x_buffer, 403+25, textPart);
