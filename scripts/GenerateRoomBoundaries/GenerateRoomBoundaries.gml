/// GenerateRoomBoundaries();
/// @desc creates the room's boundaries with obj_block
var amount_spaces_width = room_width/64;
var amount_spaces_height = room_height/64;

for(n_row = 0; n_row < room_width; n_row += 64) {
	// Top
	instance_create_layer(n_row,0,layer_get_id("Instances"),obj_block);
	
	// Bottom
	instance_create_layer(n_row,(amount_spaces_height-1)*64,layer_get_id("Instances"),obj_block);
}

for(n_column = 0; n_column < room_height; n_column += 64) {
	// Left
	instance_create_layer(0,n_column,layer_get_id("Instances"),obj_block);
	
	// Right
	instance_create_layer((amount_spaces_width-1)*64,n_column,layer_get_id("Instances"),obj_block);
}
// Right bottom corner block. Yeah, I F'd up.
//instance_create_layer((amount_spaces_width-1)*64,(amount_spaces_height-1)*64,layer_get_id("Instances"),obj_block);
