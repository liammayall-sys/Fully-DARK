function interaction(eventType) {
    if (eventType = 0) {
        global.currentIndex = eventType;
        global.canBePaused = false;
        layer_set_visible("textBoxUI", true);
        global.textBoxVisible = true;
        initialiseTextChange(0, "textBoxUI", "textBox", global.scriptArray, 0);
        initialiseTextChange(0, "textBoxUI", "nameBox", global.scriptArray, 1);
    }
}

if (objectType = "rock") {
    sprite_index = rockSprite;
}