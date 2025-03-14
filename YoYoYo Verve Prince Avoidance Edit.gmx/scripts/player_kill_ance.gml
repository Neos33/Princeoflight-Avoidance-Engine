///player_kill(opt_amount,opt_comboIncrement,opt_hitSound)
//NEW: The script now adds *opt_amount* score instead of killing the player
//NEW: *opt_comboIncrement" determines the value to increase the combo by


var opt_amount;opt_amount=1;
var opt_comboIncrement;opt_comboIncrement=1;
var opt_hitSound;opt_hitSound=global.hitSoundType;

if(argument_count>0) opt_amount=argument[0];
if(argument_count>1) opt_comboIncrement=argument[1];
if(argument_count>2) opt_hitSound=argument[2];

if (instance_exists(objPlayer) && (!global.noDeath && !global.debugNoDeath))
{
    if(audio_is_playing(opt_hitSound)) audio_stop_sound(opt_hitSound);
    global.deathSound = audio_play_sound(opt_hitSound, 0, false);
    with (objPlayer)
    {
        //instance_create(x, y, objBloodEmitter);
        //instance_destroy();
    }
    
    //instance_create(0, 0, objGameOver);
    
    if (global.gameStarted)
    {
        with(objBLCSystemController) {
            if (comboTimer<1) comboTimer += 1/10;
        }
        if(opt_amount>=0){
        
        
            
            //Multiply the score by the current combo multiplier
            opt_amount*=global.comboMultiplier;
            //Increase the combo
            with(objScoreSystemController){
                comboTimer=comboTimerMax;
                global.combo+=opt_comboIncrement;
                global.comboInit=true; 
            }
        }else{
            //reset the combo if the score amount is negative
            comboTimer=0;
            global.combo=0;
        }
        //Add the bullet's score to the total amount
        global.hitScore+=opt_amount;
    }
}
