// Check if alive ////////////////////////////////////////////////////////////
if(hp <= 0) {
	// Game over
	global.game_over = true;
	global.hp = 0;
	instance_destroy();	
} 

// Check if overhealed //
if (hp > 10) {
	hp = 10;
}

// Adjust sprite to HP ////////////////////////////////////////////////////////////
if (hp == 10) {
	sprite_index = sp_player1
} else if(hp < 10 && hp >= 7) {
	sprite_index = sp_player_2;
} else if(hp < 7 && hp >= 4) {
	sprite_index = sp_player_3;
} else if(hp < 4 && hp >= 1) {
	sprite_index = sp_player_4;

}


// Movement ////////////////////////////////////////////////////////////
if(cd_movement_counter < 1) {
	if (keyboard_check(ord("D"))) {
		// Facing status
		facing = directions.right;
		
		//GridLocked Movment
		var nextPos = NextPlayerPositionInDirection(x,y,facing);
		x = nextPos[0];
		y = nextPos[1];
	

		// Load cooldown
		cd_movement_counter = cd_movement;
	
	}

	if (keyboard_check(ord("A"))) { 
		// Facing status
		facing = directions.left;
		
		//GridLocked Movment
		var nextPos = NextPlayerPositionInDirection(x,y,facing);
		x = nextPos[0];
		y = nextPos[1];
		
		// Load cooldown
		cd_movement_counter = cd_movement;
	
	}

	if (keyboard_check(ord("W"))) {
		// Facing status
		facing = directions.up;
		
		//GridLocked Movment
		var nextPos = NextPlayerPositionInDirection(x,y,facing);
		x = nextPos[0];
		y = nextPos[1];
		
		// Load cooldown
		cd_movement_counter = cd_movement;
	}

	if (keyboard_check(ord("S"))) {
		// Facing status
		facing = directions.down;
		
		//GridLocked Movment
		var nextPos = NextPlayerPositionInDirection(x,y,facing);
		x = nextPos[0];
		y = nextPos[1];

		// Load cooldown
		cd_movement_counter = cd_movement;
	}
}

// Breaking ////////////////////////////////////////////////////////////
if (keyboard_check(ord("J")) && cd_breaker_counter < 1) {
	// Create breaker shot
	var breaker = instance_create_layer(x,y,layer,obj_breaker);
	
	switch(facing) {
		case directions.right: breaker.direction = directions.right; break;
		case directions.up: breaker.direction = directions.up; break;
		case directions.left: breaker.direction = directions.left; break;
		case directions.down: breaker.direction = directions.down; break;
	}
	
	breaker.image_angle = facing;

	
	// Cooling it down
	cd_breaker_counter = cd_breaker;
}	

// Pusher ////////////////////////////////////////////////////////////
if (keyboard_check(ord("K")) && cd_pusher_counter < 1) {
	var pusher;
	var angle = 0;
	
	while(angle < 360) {
		pusher = instance_create_layer(x,y,layer,obj_pusher);
		pusher.image_angle = angle;
		pusher.direction = angle;
		pusher.range *= 2;
		angle += 10;
	}
	
	// Cooling it down
	cd_pusher_counter = cd_pusher;
	audio_play_sound(sfx_pusher, 10, false);
}	


// Resets ////////////////////////////////////////////////////////////
if (cd_movement_counter > 0) cd_movement_counter--; 
if (cd_breaker_counter > 0) cd_breaker_counter--;
if(cd_pusher_counter > 0) cd_pusher_counter--;



//////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////
// DEBUGGING ////////////////////////////////////////////////////////////
// Skip level  ////////////////////////////////////////////////////////////
/*
if (keyboard_check(ord("N"))) {
	room_goto(room3_refreshing);
}
*/
/*
if (keyboard_check(ord("M"))) {
	RefreshRoom();
}	
*/
// Update block position
posInBlocks = CoordToBlock(x,y);
////////////////////////////////////////////////////////////
