/// SpawnPlayerAndExit();
/// @desc spawns player at random location
// Randomize spawn point
var amount_spaces_width = room_width/64;
var amount_spaces_height = room_height/64;

// Possible positions
top_left_position[0] = 96;
top_left_position[1] = 96;
	
top_right_position[0] = room_width-96;
top_right_position[1] = 96;
	
bot_left_position[0] = 96;
bot_left_position[1] = room_height-96;

bot_right_position[0] = room_width-96;
bot_right_position[1] = room_height-96

// Select randomly one position
var spawn_x, spawn_y, exit_x, exit_y;
var position = irandom_range(0,3);
switch(position) {
	case 0:
		// Player position
		spawn_x = top_left_position[0];
		spawn_y = top_left_position[1];
		
		// Exit on opposite side
		exit_x = bot_right_position[0];
		exit_y = bot_right_position[1];
		break;
	case 1:
		spawn_x = top_right_position[0]
		spawn_y = top_right_position[1];
		
		exit_x = bot_left_position[0];
		exit_y = bot_left_position[1];
		break;
	case 2:
		spawn_x = bot_left_position[0];
		spawn_y = bot_left_position[1];
		
		exit_x = top_right_position[0];
		exit_y = top_right_position[1];
		break;
	case 3:
		spawn_x = bot_right_position[0];
		spawn_y = bot_right_position[1];
		
		exit_x = top_left_position[0];
		exit_y = top_left_position[1];
		break;
}

// Clear spawn point
position_destroy(spawn_x,spawn_y);

// Spawn
instance_create_layer(spawn_x, spawn_y,layer_get_id("Instances"),obj_player);

// Place exit, opposite to player
position_destroy(exit_x,exit_y);
instance_create_layer(exit_x, exit_y,layer_get_id("Instances"),obj_exit);