if (hp <= 0) {
	instance_destroy();
} 

// Start frozen state
if(freeze_now) {
	freeze_now = false;
	frozen = true;
	cd_frozen_counter = cd_frozen;
	image_blend = make_color_rgb(0,200,255);
}

// Reduce freezing counter
if(cd_frozen_counter > 0) {
	cd_frozen_counter--;
}

// Stop frozen state
if(frozen && cd_frozen_counter == 0) {
	frozen = false;
	image_blend = default_blend;
}