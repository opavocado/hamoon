if (global.game_over && keyboard_check(ord("E"))) {
	room_goto(room3_refreshing);
	instance_destroy();
}
if (global.game_over && keyboard_check(ord("M"))) {
	room_goto(room_splash);
	instance_destroy();
}