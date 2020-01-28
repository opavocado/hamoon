/// CoordToBlock(x,y);
/// @desc receives (x,y) regular grid coordinates and returns a vector with block grid coordinates.
/// @param {real} x
/// @param {real} y
var posArray;
posArray[0] = floor(argument0 / 64);
posArray[1] = floor(argument1 / 64);
return posArray;