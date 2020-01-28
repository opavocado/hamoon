/// @description Move towards player
if(!frozen) {
	if (instance_exists(obj_player)) {
		var direction_towards_player = noone;
	
		if(obj_player.y < y && last_direction != directions.up)		direction_towards_player = directions.up;
		if(obj_player.y > y && last_direction != directions.down)	direction_towards_player = directions.down;
		if(obj_player.x < x && last_direction != directions.left)	direction_towards_player = directions.left;
		if(obj_player.x > x && last_direction != directions.right)	direction_towards_player = directions.right;
	
		var nextPos = NextPlayerPositionInDirection(x,y,direction_towards_player);
		var nextBlock = NextBlockInDirection(nextPos[0],nextPos[1], direction_towards_player);
		if(position_meeting(nextBlock[0],nextBlock[1],obj_breakable_block)) {
			// Break block
			instance_destroy(instance_position(nextBlock[0],nextBlock[1],obj_breakable_block));
		
		} else {
			// Move
			if(place_empty(nextPos[0], nextPos[1])) {
				x = nextPos[0];
				y = nextPos[1];
			} else if(place_meeting(nextPos[0],nextPos[1],obj_player)) {
				with(obj_player) {
					hp -= other.damage;
					audio_play_sound(sfx_hit, 10, false);
					other.freeze_now = true;
				}
			}
		}
	
		// Save direction
		last_direction = direction_towards_player;
		
		// Adjust Sprite
		switch(last_direction) {
			case directions.up:
					sprite_index = sp_enemy_up;
					image_xscale = abs(image_xscale);
					break;
			case directions.down:
					sprite_index = sp_enemy;
					image_xscale = abs(image_xscale);
					break;
			case directions.left:
					sprite_index = sp_enemy_side;
					image_xscale = -1 * abs(image_xscale);
					break;
			case directions.right:
					sprite_index = sp_enemy_side;
					image_xscale = abs(image_xscale);
					break;
		}
		
	} else {
		// Move randomly
		switch(irandom_range(0,3)) {
			case 0:	direction_towards_player = directions.up; break;
			case 1: direction_towards_player = directions.down; break;
			case 2: direction_towards_player = directions.left; break;
			case 3: direction_towards_player = directions.right; break;
		}
		
		var nextPos = NextPlayerPositionInDirection(x,y,direction_towards_player);
		var nextBlock = NextBlockInDirection(nextPos[0],nextPos[1], direction_towards_player);
		if(position_meeting(nextBlock[0],nextBlock[1],obj_breakable_block)) {
			// Break block
			instance_destroy(instance_position(nextBlock[0],nextBlock[1],obj_breakable_block));
		
		} else {
			// Move
			if(place_empty(nextPos[0], nextPos[1])) {
				x = nextPos[0];
				y = nextPos[1];
			}
		}
	
	}
}

// Reset alarm
alarm[0] = alarm_timer;