/// RefreshRoomBlocks();
/// @desc regenerates the room's inner blocks

// Adjust chances of spawning a unbreakable block
var chances_block = 0.1; 
var chances_breakable_block = 0.3;

//// Check for a min amount of iterations (also log(1) = 0
if(global.refresh_iteration > 1) {
	chances_block = 0.1 * global.refresh_iteration;
	chances_breakable_block = 0.1 * global.refresh_iteration;
}


//// Check for a max chance surpass
if (chances_block > 0.4) chances_block = 0.4;
if(chances_breakable_block > 0.8) chances_breakable_block = 0.8;

// Place 'em blocks
var n_row, n_column, position, pos_x, pos_y;
for (n_row = 128; n_row < room_width-128; n_row += 128)
{
	for (n_column = 128; n_column < room_height-128; n_column += 128)
	{
		if(random(1) <= chances_block) {
			position = irandom_range(0,3);
			switch(position) {
				case 0:	// top left
						pos_x = n_row;
						pos_y = n_column;
						break;
				case 1: // top right
						pos_x = n_row;
						pos_y = n_column+64;
						break;
				case 2: // bot left
						pos_x = n_row+64;
						pos_y = n_column;
						break;
				case 3: // bot right
						pos_x = n_row+64;
						pos_y = n_column+64;
						break;
			}
				// Place block
				instance_create_layer(pos_x, pos_y, layer_get_id("Instances"), obj_block);
		}
	}	
   
}

// Fill some spaces with breakable_block
for (n_row = 0; n_row < room_width-2; n_row += 64)
{
	for (n_column = 0; n_column < room_height-2; n_column += 64)
	{
		if(random(1) <= chances_breakable_block && position_empty(n_row,n_column)) {
			// Place block
			instance_create_layer(n_row, n_column, layer_get_id("Instances"), obj_breakable_block);
		}
	}	
   
}
