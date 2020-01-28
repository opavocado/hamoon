/// SpawnCollectables();
/// @desc spawns all collectable items
var amount_spaces_width = room_width/64;
var amount_spaces_height = room_height/64;

// Amount of enemies
var collectables_max_amount = round((amount_spaces_width * amount_spaces_height))/60;
var collectables_amount = global.refresh_iteration * 5;

if(collectables_amount > collectables_max_amount) {
	collectables_amount = collectables_max_amount;
}

if(collectables_amount < 15) {
	collectables_amount = 15;
}

var enemies_placed = 0;
spawn_x = irandom_range(5, amount_spaces_width-5)*64+32;
spawn_y = irandom_range(5,amount_spaces_height-5)*64+32;

while(enemies_placed < collectables_amount) {
	
	// Check position
	if(position_meeting(spawn_x,spawn_y,obj_breakable_block) || position_empty(spawn_x, spawn_y)) {
		// Place enemy
		position_destroy(spawn_x,spawn_y);
		if(random(1) > 0.5) {
			instance_create_layer(spawn_x, spawn_y,layer_get_id("Instances"),obj_collectable);
		} else {
			instance_create_layer(spawn_x, spawn_y,layer_get_id("Instances"),obj_collectable_time);
		}
		
		enemies_placed++;
}
	
	// Random next spawn
	spawn_x = irandom_range(2, amount_spaces_width-1)*64+32;
	spawn_y = irandom_range(2,amount_spaces_height-1)*64+32;
}
