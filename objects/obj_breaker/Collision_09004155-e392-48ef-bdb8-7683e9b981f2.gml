/// @description Hit the enemy

if(!other.frozen) {
	other.hp -= damage;
	other.freeze_now = true;
	audio_play_sound(sfx_enemy_hit, 10, false);
}

// Destroy breaker
instance_destroy();