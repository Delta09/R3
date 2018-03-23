/// @description Initialize Player Variables

//Movement
spd= 2; 
r_spd= spd*2;
hspd = 0;
vspd = 0;
len = 0;
dir = 0;
image_Speed = 0;
beforebattle_X = 0;
beforebattle_Y = 0;

//Character Info
firstName = "";
lastName = "";

//Combat Specs
max_health = 100;
current_health = max_health;
attack_damage_melee = 25;
attack_damage_range = 35;


walking = false;
state = move_state;


//Sprite Variables
face = 0;




#macro RIGHT spr_player_right
#macro LEFT spr_player_left
#macro UP spr_player_up
#macro DOWN spr_player_down
#macro IDLE spr_player_idle