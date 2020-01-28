/// @description Check if player has reached exit

if(place_meeting(x, y, obj_player) && !executing_warp) {
	audio_play_sound(sfx_reresh, 10, false);
	executing_warp = true;
	if(global.refreshing_room) {
		RefreshRoom();
	} else {
		room_goto_next();
	}
	
}
