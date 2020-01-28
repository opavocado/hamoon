/// SpawnEnemies();
/// @desc spawns enemies according to room size
var amount_spaces_width = room_width/64;
var amount_spaces_height = room_height/64;

// Amount of enemies
var enemies_max_amount = round((amount_spaces_width * amount_spaces_height))/18;
var enemies_amount = global.refresh_iteration * 10;

if(enemies_amount > enemies_max_amount) {
	enemies_amount = enemies_max_amount;
}

if(enemies_amount < 30) {
	enemies_amount = 30;
}

var enemies_placed = 0;
spawn_x = irandom_range(5, amount_spaces_width-5)*64+32;
spawn_y = irandom_range(5,amount_spaces_height-5)*64+32;

while(enemies_placed < enemies_amount) {
	
	// Check position
	if(position_meeting(spawn_x,spawn_y,obj_breakable_block) || position_empty(spawn_x, spawn_y)) {
		// Place enemy
		position_destroy(spawn_x,spawn_y);
		instance_create_layer(spawn_x, spawn_y,layer_get_id("Instances"),obj_prim_swarm_slug);
		enemies_placed++;
}
	
	// Random next spawn
	spawn_x = irandom_range(2, amount_spaces_width-1)*64+32;
	spawn_y = irandom_range(2,amount_spaces_height-1)*64+32;
}
