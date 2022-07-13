//YoshiCrafter Engine by YoshiCrafter29
//Event Pack by EmreFnF 
var abc:Bool = false;
var versionShit:FlxText;
///Default events
function eventName()
{
    
}

function create() 
{

}

function update(elapsed:Float) 
{

}

//V2 AND V1 EVENTS
//OLD CHAR SWITCH EVENTS
function characterSwitch(character:String, xPos:String, yPos:String)
{
    PlayState.remove(PlayState.dad);
    PlayState.dad.destroy();
    PlayState.dads = [new Character(Std.parseFloat(xPos), Std.parseFloat(yPos), character)];
    PlayState.add(PlayState.dad);
    PlayState.iconP2.changeCharacter(character, mod);
}
function characterSwitchBf(character:String, xPos:String, yPos:String)
{
    PlayState.remove(PlayState.boyfriend);
    PlayState.boyfriend.destroy();
    PlayState.boyfriends = [new Boyfriend(Std.parseFloat(xPos), Std.parseFloat(yPos), character)];
    PlayState.add(PlayState.boyfriend);
    PlayState.iconP1.changeCharacter(character, mod);
}
function characterSwitchGf(character:String)
{
    PlayState.remove(PlayState.gf);
    PlayState.gf.destroy();
    PlayState.gf = new Character(400, 130, character);
    PlayState.add(PlayState.gf);
    PlayState.gf.scrollFactor.set(0.95, 0.95);
}
//------------------------------------------------------------
function goMainMenu(yeah:String)
{
    FlxG.switchState(new MainMenuState());
}
function dead(yeah2:String)
{
    PlayState.health = -1;
}
function setHealth(health:Int)
{
    PlayState.health = health;
}
function changeDiscord(newDiscord:String)
{
DiscordClient.changePresence(newDiscord,null);
// NO WORKING
}
function scoreChange(score:Int)
{
 PlayState.songScore = score;
}
function missesChange(misses:Int)
{
 PlayState.misses = misses;
}

function zoom(zoom:Int)
{
   //+ZOOM
   FlxG.camera.zoom = zoom;
}
function zoom2(zoom:Int)
{
   //+ZOOM
   FlxG.camera.zoom += zoom;
}
function nozoom(zoom:Int)
{
//-ZOOM
FlxG.camera.zoom -= zoom;
}
function browserLoad(link:String)
{
    #if linux
    Sys.command('/usr/bin/xdg-open', link);
    #else
    FlxG.openURL(link);
    #end
}

function gameTitle(title:String)
{
    //NO WORKING
    lime.app.Application.current.window.title = title;
}

//V2.2 EVENTS
function shakeScreen(null:String)
{
PlayState.camGame.shake(0.02, 0.2);
}

//FADE EVENT CREDITS
//WeldedFlap 4082 Discord
function boyfriendFade(duration:String, targetAlpha:String) {
    duration = Std.parseFloat(duration);

    if (duration < 0) {
        duration = 0;
    }

    targetAlpha = Std.parseFloat(targetAlpha);

    if (duration == 0) {
        PlayState.boyfriend.alpha = targetAlpha;
        PlayState.iconP1.alpha = targetAlpha; 
    } else {
        FlxTween.tween(PlayState.boyfriend, { alpha: targetAlpha }, duration, { ease: FlxEase.linear });
        FlxTween.tween(PlayState.iconP1, { alpha: targetAlpha }, duration, { ease: FlxEase.linear });
    }
}

function dadFade(duration:String, targetAlpha:String) {
    duration = Std.parseFloat(duration);

    if (duration < 0) {
        duration = 0;
    }

    targetAlpha = Std.parseFloat(targetAlpha);

    if (duration == 0) {
        PlayState.dad.alpha = targetAlpha;
        PlayState.iconP2.alpha = targetAlpha;
    } else {
        FlxTween.tween(PlayState.dad, { alpha: targetAlpha }, duration, { ease: FlxEase.linear });
        FlxTween.tween(PlayState.iconP2, { alpha: targetAlpha }, duration, { ease: FlxEase.linear });
    }
}

function gfFade(duration:String, targetAlpha:String) {
    duration = Std.parseFloat(duration);

    if (duration < 0) {
        duration = 0;
    }

    targetAlpha = Std.parseFloat(targetAlpha);

    if (duration == 0) {
        PlayState.gf.alpha = targetAlpha;
    } else  {
        FlxTween.tween(PlayState.gf, { alpha: targetAlpha }, duration, { ease: FlxEase.linear });
    }
}

//---------------------------------------------------------------------
function playAnim(player:String, anim:String)
{
    if(player == "bf")
    {
        PlayState.bf.playAnim(anim);
    }
    if(player == "dad")
    {
        PlayState.dad.playAnim(anim);
    }
    if(player == "gf")
    {
        PlayState.gf.playAnim(anim);
    }
    PlayState.dad.playAnim(anim);
}


//V2.5 Events
function stageSwitch(newStage:String)
{
    PlayState.remove(PlayState.stage);
    PlayState.remove(PlayState.bf);
    PlayState.remove(PlayState.dad);
    PlayState.remove(PlayState.gf);
    PlayState.remove(PlayState.stage);
    PlayState.stage = loadStage(newStage);
    PlayState.global["stage"] = stage;
    PlayState.add(PlayState.stage);
    PlayState.add(PlayState.gf);
    PlayState.add(PlayState.dad);
    PlayState.add(PlayState.bf);
}

function shake(no:Int, hmm:Int)
{
    FlxG.camera.shake(no, hmm);
    //FlxG.camera.shake(0.05, 0.5); EXAMPLE
}

function charSwitch(player:String, character:String, xPos:String, yPos:String)
{
  if(player == "dad")
{
    PlayState.remove(PlayState.dad);
    PlayState.dad.destroy();
    PlayState.dads = [new Character(Std.parseFloat(xPos), Std.parseFloat(yPos), character)];
    PlayState.add(PlayState.dad);
    PlayState.iconP2.changeCharacter(character, mod);
}
  if(player == "bf")
{
    PlayState.remove(PlayState.boyfriend);
    PlayState.boyfriend.destroy();
    PlayState.boyfriends = [new Boyfriend(Std.parseFloat(xPos), Std.parseFloat(yPos), character)];
    PlayState.add(PlayState.boyfriend);
    PlayState.iconP1.changeCharacter(character, mod);
}
  if(player == "gf")
{
    PlayState.remove(PlayState.gf);
    PlayState.gf.destroy();
    PlayState.gf = new Character(400, 130, character);
    PlayState.add(PlayState.gf);
    PlayState.gf.scrollFactor.set(0.95, 0.95);
}

}

function endSong()
{
PlayState.endSong();
}

//THANK YOU