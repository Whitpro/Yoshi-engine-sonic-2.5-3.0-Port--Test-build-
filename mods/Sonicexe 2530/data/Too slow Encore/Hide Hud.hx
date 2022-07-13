function beatHit(curBeat:Int) {
   switch (curBeat) {
      case 232: // Beat To Hide The HUD
           PlayState.camHUD.visible = false;
      case 264: // Beat To Show The HUD Again
           PlayState.camHUD.visible = true;
   }
}