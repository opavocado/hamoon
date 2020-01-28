audio_play_sound(sfx_pickup, 10, false);
global.score_amount += 15;
global.time_left += 10;

instance_destroy();