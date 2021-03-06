/// move_state
// Get Direction
if ((!inCombat && !isInteracting)){
	dir = point_direction(0, 0, xaxis, yaxis);

	// Get Length
	if (xaxis == 0) && (yaxis == 0) {
		len = 0;
	} else if(runKey){
		len = r_spd;
		get_face();
	} else{
		len = spd;
		get_face();
		}


	// Get the speed variables
	hspd = lengthdir_x(len, dir);
	vspd = lengthdir_y(len, dir);

	// Horizontal Collisions
	if (place_meeting(x+hspd, y, obj_wall)) {
		while(!place_meeting(x+sign(hspd), y, obj_wall)) {
			x += sign(hspd);
		}
		hspd = 0;
	}

	x += hspd;

	// Vertical Collisions
	if (place_meeting(x, y+vspd, obj_wall)) {
		while(!place_meeting(x, y+sign(vspd), obj_wall)) {
			y += sign(vspd);
		}
		vspd = 0;
	}

	y += vspd;




	// Sprites
	image_speed = 0.5;
	if (len == 0) {
		image_index = 0;
	}


	// Get Direction
	switch(face) {
		case 0:
			sprite_index = RIGHT;
			break;
		
		case 1:
			sprite_index = UP;
			break;

		case 2:
			sprite_index = LEFT;
			break;
		
		case 3:
			sprite_index = DOWN;
			break;
	}
}