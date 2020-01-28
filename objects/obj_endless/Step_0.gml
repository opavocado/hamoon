/// @description Check if player has reached exit

if(place_meeting(x, y, obj_player) && !executing_warp) {
	executing_warp = true;
	room_goto(room3_refreshing);
}
