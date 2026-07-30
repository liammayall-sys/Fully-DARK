global.midTransition = false;
global.roomTarget = -1;

function transitionPlaceSequence(type) {
    if (layer_exists("transition")) {
        layer_destroy("transition");
    }
    var lay = layer_create(-9999, "transition");
    layer_sequence_create(lay, 0, 0, type); 
}

function transitionStart(roomTarget, typeOut, typeIn) {
    if (global.midTransition = false) {
        global.midTransition = true;
        global.roomTarget = roomTarget;
        transitionPlaceSequence(typeOut);
        layer_set_target_room(roomTarget);
        transitionPlaceSequence(typeIn);
        layer_reset_target_room();
        return true;
    }
    else {
        return false;
    }
}
//called as a moment at the end of an "out" transition sequence
function transitionChangeRoom() {
    room_goto(global.roomTarget);
}
//called as a moment at the end of an "in" transition sequence
function transitionFinished() {
    layer_sequence_destroy(self.elementID);
    global.midTransition = false;
}

function transitionDisableUI() {
    layer_set_visible("mainMenuUI", true);
    layer_set_visible("pauseMenuUI", false);
    layer_set_visible("settingsUI", false);
    layer_set_visible("partySettingsUI", false);
    layer_set_visible("partyStatsUI", false);
    layer_set_visible("textBoxUI", false);
    layer_set_visible("controlsUI", false);
    layer_set_visible("saveFileUI", false);
    layer_set_visible("startGameUI", false);
    layer_set_visible("resumeGameUI", false);
    layer_set_visible("resumeSaveFileUI", false);
    layer_set_visible("resumeMainMenuUI", false);
    layer_set_visible("saveGameUI", false);
    layer_set_visible("saveConfirmUI", false);
    global.canBePaused = true;
}