function initialise(keyupI, keydownI, keyleftI, keyrightI, upperOffsetI, verOffsetI, horOffsetI, horTextOffsetI) {
    keyup = keyupI;
    keydown = keydownI;
    keyleft = keyleftI;
    keyright = keyrightI;
    upperOffset = upperOffsetI;
    horOffset = horOffsetI;
    verOffset = verOffsetI;
    horTextOffset = horTextOffsetI;
}

BGAsset = menuBackgroundObject;

initialise(false, false, false, false, 100, 100, 150, 30);
halfwidth = display_get_gui_width() / 2;

pos = 0;

mastervol = 1;
musicvol = 1;
sfxvol = 1;

global.musicvol = 1;
global.sfxvol = 1;

audio_group_load(Music);
audio_group_load(SFX);

function settingsCheck() {
    if ((global.mainMenuCheck = 0) and (object_exists(menuBackgroundObject))) {
        menuBackgroundObject.menuBGInvisible(); 
    }
    else {
        menuBackgroundObject.menuBGVisible();
    }
}