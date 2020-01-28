// Stats
hp = 10;
damage = 3;

// Controls
last_direction = noone;

//// Freezing
////// Called by other entities
freeze_now = false;

////// Called internally
frozen = false;

// Alarms
speeds[0] = room_speed/5;
speeds[1] = room_speed/10;

if(random(1) > 0.85) {
	enraged = true;
	alarm_timer = speeds[1];
	image_blend = make_color_rgb(255,0,0);
} else {
	enraged = false;
	alarm_timer = speeds[0];
}

alarm[0] = alarm_timer;

// Cooldowns
cd_frozen = 50;
cd_frozen_counter = cd_frozen;


// Color
default_blend = image_blend;