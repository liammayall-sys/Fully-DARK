function callStats() {
    global.statsArray = [ 
        ["Jiya Eversworn", 90, 110, miraSprite],
        ["Hazel Thorncroft", 150, 100, heleneSprite],
        ["Samaroth Svaeda", 140, 100, samSprite],
        ["Caster The Skeleton", 80, 120, casterSprite],
        ["\"Breezy\" Bill Skyler", 80, 120, billSprite],
        ["Astred Houlstrom", 100, 100, astredSprite],
        ["Sable Agosto", 120, 80, sandraSprite]
    ]
}

function callScript() {
    global.scriptArray = [
        ["My name is Jeff", "Jeff"],
        ["Hello Jeff", "Wolt" ],
        ["scene end", "null"]
    ]
}

function spawnPlayer() {
    var _inst = instance_create_layer(global.saveStruct.x, global.saveStruct.y, "Instances", playerObject);
    with _inst{
        sprite_index = global.saveStruct.leader;
        x = global.saveStruct.x;
        y = global.saveStruct.y;
    }
}

function switchTextBox() {
    if (global.scriptArray[(global.currentIndex + 1), 0] = "scene end") {
        layer_set_visible("textBoxUI", false);
        global.canBePaused = true;
        global.textBoxVisible = false;
    }
    else {
        switchTextFromArray(true, global.currentIndex, "textBoxUI", "textBox", global.scriptArray, 0, false);
        switchTextFromArray(true, global.currentIndex, "textBoxUI", "nameBox", global.scriptArray, 1, true);
    }
}

function getTextID(layer, textNode) {
    uiLayer = layer_get_flexpanel_node(layer);
    textPanel = flexpanel_node_get_child(uiLayer, textNode);
    textStruct = flexpanel_node_get_struct(textPanel);
    textId = textStruct.layerElements[0].elementId;
    return textId;
}

function getSpriteID(layer, sprite) {
    uiLayer = layer_get_flexpanel_node(layer);
    spriteId = layer_sprite_get_id(uiLayer, sprite);
}

function depthCorrection() {
    if (y != yprevious) {
        depth = -y;
    }
}

function initialiseTextChange(index, uiLayer, textNode, array, arrayNumber) {
    characterName = (array[index, arrayNumber]);
    layer_text_text(getTextID(uiLayer, textNode), characterName);
}

function switchTextFromArray(direction, index, uiLayer, textNode, array, arrayNumber, single) {
    if (direction = true) {
        layer_text_text(getTextID(uiLayer, textNode), string(array[index + 1, arrayNumber]))
        if (single = true) {
            global.currentIndex = index + 1;
        }
    }
    if (direction = false) {
        layer_text_text(getTextID(uiLayer, textNode), string(array[index - 1, arrayNumber]))
        if (single = true) {
            global.currentIndex = index - 1;
        }
        
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
