/// @description Setting Up Controller

globalvar isPaused, isInteracting, inputDisabled, ending, Debug;
isPaused = false;
isInteracting = false;
inputDisabled = false;
ending = false;
Debug = false;

//Pause Options
menu_x = x;
menu_y = y;
button_h = font_get_size(fnt_main);

//buttons
button_pause[0] = "Resume";
button_pause[1] = "Exit";
buttons_pause = array_length_1d(button_pause);

menu_pause_index= 0;
last_selected_pause = 0;