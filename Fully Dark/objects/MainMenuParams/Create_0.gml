audio_stop_all();
audio_group_load(Music);
audio_group_load(SFX);
layer_set_visible("mainMenuUI", true);
layer_set_visible("pauseMenuUI", false);
layer_set_visible("partySettingsUI", false);
alarm[0] = game_get_speed(gamespeed_fps)/2;