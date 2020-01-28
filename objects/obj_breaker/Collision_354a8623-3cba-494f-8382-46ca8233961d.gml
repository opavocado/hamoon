// Remove hp from breakable block
with(other) {
	instance_destroy();
	audio_play_sound(sfx_break, 10, false);
}

// Destroy breaker
instance_destroy();
