var stage:Stage = null;
function create() {
	stage = loadStage('SonicTooslow');
}
function update(elapsed) {
	stage.update(elapsed);
}
function beatHit(curBeat) {
	stage.onBeat();
}