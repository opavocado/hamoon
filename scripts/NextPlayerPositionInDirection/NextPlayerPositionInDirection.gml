/// NextPlayerPositionInDirection(x,y,d);
/// @desc receives (x,y,d) block grid coordinates and returns block grid coordinates of the next block in the same direction
/// @param {real} x
/// @param {real} y
/// @param {real} d
var posArray;
var increment = 32;
posArray[0] = argument0;
posArray[1] = argument1;

switch(argument2) {
	case directions.up:
			posArray[1] -= increment;
			break;
	case directions.down:
			posArray[1] += increment;
			break;
	case directions.right:
			posArray[0] += increment;
			break;
	case directions.left:
			posArray[0] -= increment;
			break;
}
return posArray;

