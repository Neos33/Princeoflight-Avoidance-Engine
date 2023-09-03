///visual_flash([alpha],[time],[colour])
/**
    * Creates a screen-wide flash effect of the colour [colour].
    * @param {float} [alpha] - The initial alpha of the flash (the default is 0.5);
    * @param {integer} [time] - The duration of the flash in frames (the default is 20)
    * @param {colour} [colour] - The colour of the flash (the default is c_white)
    * 
*/

var _alpha,_time,_colour;
_alpha=0.5;
_time=20;
_colour=c_white;
if(argument_count>0) _alpha=argument[0];
if(argument_count>1) _time=argument[1];
if(argument_count>2) _colour=argument[2];

var _obj;_obj=instance_create(0,0,objPColourRectangle);
_obj.image_blend=_colour;
_obj.depth=-9999;
_obj.image_alpha=_alpha;
instance_fade_out(_obj,_time);
