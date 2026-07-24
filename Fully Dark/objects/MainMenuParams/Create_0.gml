audio_stop_all();
audio_group_load(Music);
audio_group_load(SFX);
layer_set_visible("mainMenuUI", true);
layer_set_visible("pauseMenuUI", false);
layer_set_visible("settingsUI", false);
layer_set_visible("partySettingsUI", false);
layer_set_visible("partyStatsUI", false);
layer_set_visible("textBoxUI", false);
layer_set_visible("controlsUI", false);
global.mainMenuCheck = true;
global.musicvol = 1;
global.sfxvol = 1;
global.textBoxVisible = false;
global.scriptArray = [
    ["My name is Jeff", "Jeff"],
    ["Hello Jeff", "Wolt" ],
    ["scene end", "null"]
]
alarm[0] = game_get_speed(gamespeed_fps)/2;