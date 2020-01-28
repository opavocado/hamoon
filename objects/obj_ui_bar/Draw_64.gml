var screen_width = 1280;

// Generate strings //
// Level number
if(global.refreshing_room) {
	level = "Level: " + string(global.refresh_iteration);
} else {
	level = "Level: Tutorial";
}

// Time left
var time_left = "Time left: " + string(global.time_left);

// Pusher cooldown
var pusher_counter = 0;
if(instance_exists(obj_player)) {
	pusher_counter = obj_player.cd_pusher_counter;
} 

// Score
var score_text = "Score: " + string(global.score_amount);

// Draw background for UI //
draw_rectangle_color(0,0,screen_width,35,0,0,0,0,false);

// Draw debug position //
// Text config
draw_set_font(font_small);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Draw Level number
draw_text(5, 10, level);

// Draw time left
draw_text((screen_width/2)-string_width(time_left), 10, time_left);

// Draw pusher cooldown
draw_sprite_stretched(sp_pusher_ui, 0, (screen_width*3/4)-80, -5, 48, 48);
draw_text((screen_width*3/4)-30, 10, string(round(pusher_counter/room_speed)));

// Draw score
draw_text((screen_width-20)-string_width(score_text), 10, score_text);

