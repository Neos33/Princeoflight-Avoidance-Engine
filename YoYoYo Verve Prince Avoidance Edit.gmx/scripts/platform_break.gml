/// platform_break(x,y, layer);
/**
    * Removes a tile in the layer and breaks a block at that space.
    *
    * @param {float} x - The X position to remove a platform at.
    * @param {float} y - The Y position to remove a platform at.
    * @param {integer} layer - The layer to remove the tile from.
    *
    * @example
    * //The following code breaks a block at position (0,0) (top left corner of the room)
    * //and removes a tile at layer 10000000 at that position.
    * block_break(0,0,10000000);
    * 
    
*/

var _x;_x=argument[0];
var _y;_y=argument[1];
var _platform;_platform=instance_position(_x,_y,objPlatform);
with(_platform){
    with(instance_create(_x,_y,objBrokenPlatform)) image_index=other.image_index;
    instance_destroy();
}
