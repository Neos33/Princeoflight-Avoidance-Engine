///random_range_controlled(x1,x2,rngController);

var x1 = argument[0];
var x2 = argument[1];

var rngController = argument[2];


var bin = rngController.bin;


var xBin1=lerp(x1,x2,bin/rngController.numBins);
var xBin2=lerp(x1,x2,(bin+1)/rngController.numBins);
with(rngController) event_user(0);

return random_range(xBin1,xBin2);

