/// @description Setting Up Controller

globalvar inCombat, enemyID, playerAttacking, ranAway, gameOver;
inCombat = false;
enemyID = 0;
playerAttacking = true;
ranAway = false;
gameOver = false;


//Fight Options
fight_x = 10;
fight_y = 147;
fight_h = 70;

//buttons
fight_option[0] = "Melee Attack";
fight_option[1] = "Ranged Attack";
fight_option[2] = "Run";
fight_options = array_length_1d(fight_option);

fight_option_index = 0;
last_selected_fight = 0;