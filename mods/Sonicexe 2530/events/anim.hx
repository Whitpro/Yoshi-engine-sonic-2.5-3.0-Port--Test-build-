function animation(player:String, anim:String){ // Parameter 1: character that is playing animation, parameter 2: animation name    
    if(Std.parseInt(player) == 0){
        PlayState.boyfriend.playAnim(anim); // For BF animation
    }
    if(Std.parseInt(player) == 1){
        PlayState.dad.playAnim(anim);// For opposing character animation
    }
    if(Std.parseInt(player) == 2){
        PlayState.gf.playAnim(anim); //For GF animation
    }
}