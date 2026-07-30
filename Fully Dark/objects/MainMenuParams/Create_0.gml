audio_stop_all();
audio_group_load(Music);
audio_group_load(SFX);
layer_set_visible("mainMenuUI", true);
layer_set_visible("resumeMainMenuUI", false);
for (var i = 0; i < 3; i++) {
    if(file_exists($"savedata{i+1}.txt") = true) {
        layer_set_visible("mainMenuUI", false);
        layer_set_visible("resumeMainMenuUI", true);
    }
}
layer_set_visible("pauseMenuUI", false);
layer_set_visible("settingsUI", false);
layer_set_visible("partySettingsUI", false);
layer_set_visible("partyStatsUI", false);
layer_set_visible("textBoxUI", false);
layer_set_visible("controlsUI", false);
layer_set_visible("saveFileUI", false);
layer_set_visible("startGameUI", false);
layer_set_visible("resumeSaveFileUI", false);
layer_set_visible("resumeGameUI", false);
layer_set_visible("saveGameUI", false);
layer_set_visible("saveConfirmUI", false);
gml_pragma("global", "callStats()");
gml_pragma("global", "callScript()");
global.mainMenuCheck = true;
global.musicvol = 1;
global.sfxvol = 1;
global.textBoxVisible = false;
global.newGame = false;
alarm[0] = game_get_speed(gamespeed_fps)/2;