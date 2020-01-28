if(global.time_left > 0) {
	global.time_left--;
	global.score_amount++;
	
	if(global.time_left <= 10 && global.time_left > 0) {
		audio_play_sound(sfx_timeleft, 10, false);
	}
} 

if(global.time_left <= 0 || global.game_over) {
	if(!sfx_played) {
		audio_stop_all();
		audio_play_sound(sfx_gameover,5,false);
		sfx_played = true;
	}
	// Game over
	if(instance_exists(obj_player)) {
		with(obj_player) {
			instance_destroy();
		}
	}
	
	instance_create_layer(0, 0, layer_get_id("GUI"), obj_ui_game_over);
	global.game_over = true;
	global.time_left = 0;
}


alarm[0] = room_speed;