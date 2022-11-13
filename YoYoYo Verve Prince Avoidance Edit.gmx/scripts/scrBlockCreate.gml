///scrBlockCreate(x,y,layer,tileset,tileX,tileY)
///Create a block at the position (x,y) and add a tile at that position

var X = argument[0];
var Y = argument[1];
var Layer = argument[2];
var tileset = argument[3];
var tileX = argument[4];
var tileY = argument[5];

instance_create(X,Y,objBlock);

tile_add(tileset,tileX,tileY,32,32,X,Y,Layer);
