/// @description Insert description here
// You can write your code in this editor
if(!frozen) {
	other.hp -= damage;
	audio_play_sound(sfx_hit, 10, false);
	freeze_now = true;
}
