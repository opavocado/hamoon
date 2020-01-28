/// RefreshRoom()
/// Refreshes the room for next iteration
if(instance_exists(obj_player)) {
	global.hp = obj_player.hp;
}	else {
	global.hp = 10;
}


// Clear room
with(obj_block) {instance_destroy();}
with(obj_breakable_block) {instance_destroy();}
with(obj_prim_swarm_slug) {instance_destroy();}
with(obj_collectable) {instance_destroy();}
with(obj_exit) {instance_destroy();}
with(obj_player) {instance_destroy();}

// Update iterations
global.refresh_iteration++;
global.score_amount += (100 * global.refresh_iteration);

// Refresh boundaries
GenerateRoomBoundaries();

// Refresh room blocks
RefreshRoomBlocks();

// Refresh player and exit locations
RefreshPlayerAndExit();

// Place action blocks and items
SpawnCollectables();

// Refresh amount of enemies and distribution
RefreshEnemies();