keyup = false;
keydown =false;
keyleft = false;
keyright = false;

halfwidth = display_get_gui_width() / 2;

pos =0;

mastervol = 1;
musicvol = 1;
sfxvol = 1;

global.musicvol = 1;
global.sfxvol = 1;

audio_group_load(Music);
audio_group_load(SFX);
