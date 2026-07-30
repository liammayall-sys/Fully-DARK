keyright = keyboard_check(vk_right);
keyleft = keyboard_check(vk_left);
keyup = keyboard_check_pressed(vk_up);
keydown = keyboard_check_pressed(vk_down);

if (keyup) pos--; 
if (keydown) pos++;

if(pos< 0) pos = 2;
    
if(pos>2) pos = 0;

global.musicvol = musicvol * mastervol;
global.sfxvol = sfxvol * mastervol;

audio_group_set_gain(Music, power(global.musicvol, volumeExponent), 0);
audio_group_set_gain(SFX, power(global.sfxvol, volumeExponent), 0);
 