
//create the score and seed controllers

instance_create(0,0,objScoreSystemController);
instance_create(0,0,objSeedController);


global.hitSoundType = sndBossHit;


enum Ranks{
    NONE=0,
    BRONZE=1,
    SILVER=2,
    GOLD=3
}

//Best rank
global.bestRank=Ranks.NONE;

global.rankScore[Ranks.NONE]=0;
global.rankScore[Ranks.BRONZE]=5000;
global.rankScore[Ranks.SILVER]=15000;
global.rankScore[Ranks.GOLD]=30000;


global.rankCombo[Ranks.NONE]=0;
global.rankCombo[Ranks.BRONZE]=0;
global.rankCombo[Ranks.SILVER]=0;
global.rankCombo[Ranks.GOLD]=0;


global.currentRank = Ranks.NONE
global.bestRank = Ranks.NONE


global.bestMaxCombo = 1.0;

//Detect fullcombo in a run
global.fullCombo=0;
global.comboInit=false;
global.bestFullCombo=0;

//happy combo meter

global.BLCscoreVisible=true;
instance_create(0,0,objBLCSystemController);


//Anti Avoidance
global.scoreVisible = true; //set whether the score is always visible, or only on the end screen
global.seeded = false; //set whether to seed the fight or not
global.displayDebugTimeline = true; //set whether to display the debug timeline

///Freeze frames
global.freeze_start=ds_list_create();
global.freeze_end=ds_list_create(); 
//All freeze frames are stored as a sequence of intervals 


//blood
//global.seqBlood = scrSeededSeqInit(222,irandom(100));



