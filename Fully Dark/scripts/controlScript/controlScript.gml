Caster = false;
Sam = false;
Astred = false;
Bill = false;
Sable = false;
Hazel = false;
Jiya = false;

statsArray = [
    ["Caster The Skeleton", 80, 120, Caster, casterSprite],
    ["Samaroth Svaeda", 140, 100, Sam, samSprite],
    ["Astred Houlstrom", 100, 100, Astred, astredSprite],
    ["\"Breezy\" Bill Skyler", 80, 120, Bill, billSprite],
    ["Alisabelle Agosto", 120, 80, Sable, sandraSprite],
    ["Hazel Thorncroft", 150, 100, Hazel, heleneSprite],
    ["Jiya Eversworn", 90, 110, Jiya, miraSprite]
]

function transitionButton(menuFromI, menuToI) { 
    layer_set_visible(menuFromI, false);
    layer_set_visible(menuToI, true);
    
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
    uiLayer = layer_get_flexpanel_node("partyStatsUI");
    textPanel = flexpanel_node_get_child(uiLayer, "titleText");
    textStruct = flexpanel_node_get_struct(textPanel);
    textId = textStruct.layerElements[0].elementId;
    return textId;
}

function initialisePartyStats(partyIndex) {
    characterName = (global.statsArray[partyIndex, 0]);
    statsIndex = partyIndex;
    layer_text_text(getTextID(), characterName);
}

function switchPartyStats(direction) {
    layer_text_text(getTextID(), global.statsArray[statsIndex + direction, 0])
}

function depthCorrection() {
    if (y != yprevious) {
        depth = -y;
}
}