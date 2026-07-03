Caster = false;
Sam = false;
Astred = false;
Bill = false;
Sable = false;
Hazel = false;
Jiya = false;

statsArray = [
    ["Jiya Eversworn", 90, 110, Jiya, miraSprite],
    ["Hazel Thorncroft", 150, 100, Hazel, heleneSprite],
    ["Samaroth Svaeda", 140, 100, Sam, samSprite],
    ["Caster The Skeleton", 80, 120, Caster, casterSprite],
    ["\"Breezy\" Bill Skyler", 80, 120, Bill, billSprite],
    ["Astred Houlstrom", 100, 100, Astred, astredSprite],
    ["Sable Agosto", 120, 80, Sable, sandraSprite]
]

sciptArray = [
    ["My name is Jeff", "Jeff"],
    ["Hello Jeff", "Wolt"]
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
    layer_set_visible("mainMenuUI", true);
}

function getTextID(layer, textNode) {
    uiLayer = layer_get_flexpanel_node(layer);
    textPanel = flexpanel_node_get_child(uiLayer, textNode);
    textStruct = flexpanel_node_get_struct(textPanel);
    textId = textStruct.layerElements[0].elementId;
    return textId;
}

function depthCorrection() {
    if (y != yprevious) {
        depth = -y;
    }
}

function initialisePartyStats(partyIndex, uiLayer, textNode) {
    characterName = (global.statsArray[partyIndex, 0]);
    layer_text_text(getTextID(uiLayer, textNode), characterName);
}

function switchPartyStats(direction, index, uiLayer, textNode) {
    if (direction = true) {
        layer_text_text(getTextID(uiLayer, textNode), global.statsArray[index + 1, 0])
        global.currentIndex = index + 1;
    }
    
    if (direction = false) {
        layer_text_text(getTextID(uiLayer, textNode), global.statsArray[index - 1, 0])
        global.currentIndex = index - 1;
    }
}

function changeMusic(oldMusic, newMusic, oldMusicOn) {
    if (oldMusicOn = true) {
        audio_sound_gain(oldMusic, global.musicvol, 0);
        audio_sound_gain(oldMusic, 0, 4000);
    }
    audio_play_sound(newMusic, 0, true);
    audio_sound_gain(newMusic, 0, 0);
    audio_sound_gain(newMusic, global.musicvol, 4000);
}

function startDynamicMusic(trackArray, defaultTrack, arrayLength) {
    audio_play_sound(defaultTrack, 0, true);
    for (var i = 0; i < arrayLength; i++) {
        audio_play_sound(trackArray[i], 0, true);
        audio_sound_gain(trackArray[i], 0, 0);
    }
    audio_sound_gain(defaultTrack, 0, 0);
    audio_sound_gain(defaultTrack, global.musicvol, 4000);
}