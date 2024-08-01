///bullet_kill_ance();

if(ance_killer){
    switch(Type){
        case "Hold":
            player_kill_ance(Score/5,Combo/5);
            break;
        case "Decay":
            if(decay>0.6){
                player_kill_ance(Score/5,Combo/5);
                decay-=decaydrop;
            }
            break;
        case "Collect":  
        default:
            ance_killer=false;
            ance_alpha=0.5;
            player_kill_ance(Score,Combo);                          
    }
}
