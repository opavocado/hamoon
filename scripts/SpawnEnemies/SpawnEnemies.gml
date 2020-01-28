/// SpawnEnemies();
/// @desc spawns enemies according to room size
var amount_spaces_width = room_width/64;
var amount_spaces_height = room_height/64;
var enemies_amount = round((amount_spaces_width * amount_spaces_height)/128);
var enemies_placed = 0;
spawn_x = irandom_range(2, amount_spaces_width-1)*64+32;
spawn_y = irandom_range(2,amount_spaces_height-1)*64+32;

while(enemies_placed < enemies_amount) {
	
	// Check position
	if(!position_empty(spawn_x,spawn_y) && position_meeting(spawn_x,spawn_y,obj_breakable_block)) {
		
		// Clear breakable block
		position_destroy(spawn_x,spawn_y);
		
		// Place enemy
		instance_create_layer(spawn_x, spawn_y,layer_get_id("Instances"),obj_prim_swarm_slug);
		enemies_placed++;
		//show_debug_message("Placed enemy at: " + string(spawn_x) + " " + string(spawn_y));
	} else {
		instance_create_layer(spawn_x, spawn_y,layer_get_id("Instances"),obj_prim_swarm_slug);
		enemies_placed++;
	}
	
	
	
	// Random next spawn
	spawn_x = irandom_range(2, amount_spaces_width-1)*64+32;
	spawn_y = irandom_range(2,amount_spaces_height-1)*64+32;
}
