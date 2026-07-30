function initialise(keyupI, keydownI, keyleftI, keyrightI, upperOffsetI, verOffsetI, horOffsetI, horTextOffsetI, textFontI, titleScaleI, headingScaleI, volumeExponentI) {
    keyup = keyupI;
    keydown = keydownI;
    keyleft = keyleftI;
    keyright = keyrightI;
    upperOffset = upperOffsetI;
    horOffset = horOffsetI;
    verOffset = verOffsetI;
    horTextOffset = horTextOffsetI;
    titleScale = titleScaleI;
    headingScale = headingScaleI;
    draw_set_font(textFontI);
    volumeExponent = 2.71;
}

BGAsset = menuBackgroundObject;

initialise(false, false, false, false, 100, 100, 150, 30, PIXY, 2, 1, 2.71);
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
    if ((global.mainMenuCheck = true) and (object_exists(menuBackgroundObject))) {
        menuBackgroundObject.menuBGInvisible(); 
    }
    else {
        menuBackgroundObject.menuBGVisible();
    }
}