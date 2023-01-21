<<<<<<<< HEAD:YoYoYo Verve Prince Avoidance Edit.gmx/scripts/trgMove.gml
/// trgMove(hspeed, vspeed);
/**
    * Sets an object's h/vspeeds when triggered.
    * 
    * @param {float} hspeed - The hspeed of the object to be set.
    * @param {float} vspeed - The vspeed of the object to be set.
    * 
*/
========
///trg_move(type/hspeed, vspeed)
//Sets an object's h/vspeeds when triggered.
//Arguments:
//1. hspeed
//2. vspeed

>>>>>>>> upstream/main:YoYoYo Verve Prince Avoidance Edit.gmx/scripts/trg_move.gml
if (!global.makingTrigger)
{
    switch(argument[0])
    {
        case "define":
            h = 0;
            v = 0;
            break;
            
        case "exclusive":
            return true;
        
        case "isUsed":
            return (h != 0 || v != 0);
            
        case "init":
            hspeed = h;
            vspeed = v;
            break;
    }
}
else
{
    if (argument_count >= 1) { h = argument[0]; }
    if (argument_count >= 2) { v = argument[1]; }
}
