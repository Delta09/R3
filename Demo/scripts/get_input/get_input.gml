/// @desc get_input()
if(!inputDisabled){
	rKey = max(keyboard_check(vk_right), keyboard_check(ord("D")), 0);
	lKey = max(keyboard_check(vk_left), keyboard_check(ord("A")), 0);
	dKey = max(keyboard_check(vk_down), keyboard_check(ord("S")), 0);
	uKey = max(keyboard_check(vk_up), keyboard_check(ord("W")), 0);
	runKey = keyboard_check(vk_shift);
	pauseKey = max(keyboard_check_pressed(vk_escape), keyboard_check_pressed(ord("1")), 0);
	exitKey = (keyboard_check_pressed(ord("1")) && keyboard_check_pressed(ord("2")));

	xaxis = (rKey - lKey);
	yaxis = (dKey - uKey);


	//menu
	rKey_menu = max(keyboard_check_pressed(vk_right), keyboard_check_pressed(ord("D")), 0);
	lKey_menu = max(keyboard_check_pressed(vk_left), keyboard_check_pressed(ord("A")), 0);
	dKey_menu = max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);
	uKey_menu = max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
	select = max(keyboard_check_pressed(vk_enter), keyboard_check_pressed(ord("F")), 0);
	select2 = keyboard_check_pressed(ord("G"));

	moveLR = (rKey_menu  - lKey_menu );
	moveUD = (dKey_menu  - uKey_menu);
}