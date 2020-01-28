// Get camera parameters
var camera_x = camera_get_view_x(view_camera[0]);
var camera_y = camera_get_view_y(view_camera[0]);
var camera_width = camera_get_view_width(view_camera[0]);


// Form debug string
var player_x = obj_player.x;
var player_y = obj_player.y;

var gridPos = CoordToBlock(player_x,player_y);

the_position =	"Pos (" +
				string(player_x) +
				";" +
				string(player_y) +
				") - GridPos (" +
				string(gridPos[0]) +
				";" +
				string(gridPos[1]) +
				")";


// Draw debug position
draw_set_font(font_debug_text);
draw_set_color(c_white);
draw_text(camera_x + camera_width/2 - 300, 
			camera_y + camera_width/2,
			the_position);