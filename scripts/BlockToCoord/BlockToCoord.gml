/// BlockToCoord(x,y);
/// @desc receives (x,y) block grid coordinates and return regular grid coordinates
/// @param {real} x
/// @param {real} y
var posArray;
posArray[0] = argument0*64;
posArray[1] = argument1*64;
return posArray;