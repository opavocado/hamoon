
// Enums and shit /////////////////////////////////////////////////////////////////////////////////
enum directions {
   right = 0,
   up_right = 45,
   up = 90,
   up_left = 135,
   left = 180,
   down_left = 225,
   down = 270,
   down_right = 135
}


// Terrain generator ///////////////////////////////////////////////////////////////////////////////
// Randomise seed for randoms
randomise();

// Show seed somewhere
show_debug_message("Current seed is: " +  string(random_get_seed()));

global.refreshing_room = false;
global.hp = 10;
global.game_over = false;
global.score_amount = 0;