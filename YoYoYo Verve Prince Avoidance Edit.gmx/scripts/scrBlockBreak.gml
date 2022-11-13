///scrBlockBreak(x,y, layer);
///Break a tile in the layer and a block at that space
var X = argument[0];
var Y = argument[1];
var Layer = argument[2];

var block=instance_position(X,Y,objBlock);
with(block){
    tile_layer_delete_at(Layer,x,y);
    for(var i=0;i<2;i++) 
        for(var j=0;j<2;j++)
            with(instance_create(x+8+16*i,y+8+16*j,objBrokenTile)) self.Layer=Layer;
    instance_destroy();
}

