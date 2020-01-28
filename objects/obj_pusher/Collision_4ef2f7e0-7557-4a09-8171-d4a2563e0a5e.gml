// Remove hp from breakable block
other.hp = other.hp - damage;
audio_play_sound(sfx_break, 10, false);

// Destroy breaker
max_hits--;
if(max_hits <= 0) {
	instance_destroy();
}
