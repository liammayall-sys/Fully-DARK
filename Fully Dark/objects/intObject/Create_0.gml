function interaction(eventType) {
    if (eventType = "textBox") {
        global.currentIndex = eventIndex;
        global.canBePaused = false;
        layer_set_visible("textBoxUI", true);
        global.textBoxVisible = true;
        initialiseTextChange(eventIndex, "textBoxUI", "textBox", global.scriptArray, 0);
        initialiseTextChange(eventIndex, "textBoxUI", "nameBox", global.scriptArray, 1);
    }
}

if (objectType = "rock") {
    sprite_index = rockSprite;
}