/// GenerateRoomBlocks();
/// @desc creates the room's inner blocks
var n_row, n_column;
for (n_row = 0; n_row < room_width-2; n_row += 64)
{
	for (n_column = 0; n_column < room_height-2; n_column += 64)
	{
		if(random(1) <= 0.2) {
			instance_create_layer(n_row,n_column,layer_get_id("Instances"),obj_breakable_block);
		} else if (random(1) <= 0.1){
			instance_create_layer(n_row,n_column,layer_get_id("Instances"),obj_block);
		}
	}
   
}