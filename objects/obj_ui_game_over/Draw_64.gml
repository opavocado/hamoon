// Text to draw
game_over = "GAME OVER";
if(room == room3_refreshing) {
	level = "You reached level: " + string(global.refresh_iteration) + " with score: " + string(global.score_amount);
} else {
	level = "";
}

options = "Press 'E' for endless mode, 'M' for main menu.";

var center_x = 1280/2;
var center_y = 720/2;

// Draw shadow
draw_set_alpha(0.3);
draw_rectangle_color(0, 0, 1366, 768, 0, 0, 0, 0, false);

draw_set_alpha(1);
// Draw text
draw_set_font(font_large);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(center_x, center_y, game_over);

draw_set_font(font_medium);
draw_text(center_x, center_y+60, level);

draw_set_font(font_small);
draw_text(center_x, center_y+110, options);
