var coolStaticThing:FlxSprite;
function onGenertateStaticArrows() {
    coolStaticThing.frames = Paths.getSparrowAtlas('images/hitStatic'); // REPLACE 'theFilePath' to your file path lol
    coolStaticThing.animation.addByPrefix('Static', 'staticANIMATION', 24, true); // false means it doesn't loop, set it to true if you want to loop
    coolStaticThing.animation.play('staticANIMATION');
    coolStaticThing.cameras = [PlayState.camHUD];
    coolStaticThing.visible = false;
    PlayState.add(coolStaticThing);
}

function beatHit(curBeat) {
    switch(curBeat) {
      case 1 || 10:
        coolStaticThing.visible = true;
        coolStaticThing.animation.play('staticANIMATION');
        coolStaticThing.animation.finishCallback = function(animName:String) {
        coolStaticThing.visible = false;
        }
    }
}

