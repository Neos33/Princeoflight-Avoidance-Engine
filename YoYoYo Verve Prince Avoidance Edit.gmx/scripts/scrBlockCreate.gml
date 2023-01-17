///scrBlockCreate(x,y,layer,tileset,tileX,tileY)
/**
    * Adds a tile to the specified layer and adds a block at that space.
    * @param {float} x - The X position to create a block at.
    * @param {float} y - The Y position to create a block at.
    * @param {integer} layer - The layer to add the tile to.
    * @param {tilesetID} tileset - The tileset from which to take the tile.
    * @param {integer} tileX - The X position in the tileset to take the tile from.
    * @param {integer} tileY - The Y position in the tileset to take the tile from.
    * 
    * @example
    * //The following code creates a block at position (0,0) (top left corner of the room)
    * //and adds a tile at layer 10000000 at that position.
    * //The tile is taken from the tileset bAllTiles at position (32,32).
    * scrBlockCreate(0,0,10000000,bAlltiles,32,32);
    * 
*/
var X = argument[0];
var Y = argument[1];
var Layer = argument[2];
var tileset = argument[3];
var tileX = argument[4];
var tileY = argument[5];

instance_create(X,Y,objBlock);

tile_add(tileset,tileX,tileY,32,32,X,Y,Layer);
