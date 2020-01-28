audio_stop_all();
audio_play_sound(music_game,0,true);

// Level config
global.hp = 10;
global.time_left = 60;
global.game_over = false;
global.score_amount = 0;

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
RefreshRoomBlocks();

// Spawn player and exit
SpawnPlayerAndExit();

// Place action blocks and items
SpawnCollectables();

// Spawn enemies
RefreshEnemies();