function transitionButton(menuFromI, menuToI) { 
    layer_set_visible(menuFromI, false);
    layer_set_visible(menuToI, true);
    if (menuToI = "partySettingsUI") {
        getTextID();
    }
}

function quitGame() {
    game_end();
}

function unpauseGame(menuFromI) {
    layer_set_visible(menuFromI, false);
    global.canBePaused = true;
}

function newGame() {
    room_goto(Muckshore);
    audio_sound_gain(MainTitleGR, 0, 1000);
    global.mainMenuCheck = false;
}

function mainTransition(menuFromI, menuToI) {
    layer_set_visible(menuFromI, false);
    if global.mainMenuCheck = true {
        layer_set_visible("mainMenuUI", true);
    }
    else {
        layer_set_visible(menuToI, true);
    }
}

function quitToMenu(menuFromI) {
    layer_set_visible(menuFromI, false);
    room_goto(MainMenu);
    layer_set_visible("MainMenuUI", true);
}

function getTextID() {
    textPanel = flexpanel_node_get_child(, "titleText");
    textStruct = flexpanel_node_get_struct(textPanel);
    textId = textStruct.layerElements[0].elementId;
    return textId;
}
function switchPartyStart(direction) {
    layer_text_text(getTextID(), playerObject.statsArray[0, 0])
}