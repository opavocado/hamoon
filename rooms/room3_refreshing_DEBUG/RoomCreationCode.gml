// Terrain generator ///////////////////////////////////////////////////////////////////////////////
global.refreshing_room = true;
global.refresh_iteration = 0;

// Generate seed
randomise();

// Show seed somewhere
show_debug_message("Current seed is: " + string(random_get_seed()));

// Generate boundaries
GenerateRoomBoundaries();

// Filling the world with randomized blocks
GenerateRoomBlocks();

// Spawn player and exit
SpawnPlayerAndExit();


// Place action blocks and items
// ToDo

// Spawn enemies
SpawnEnemies();