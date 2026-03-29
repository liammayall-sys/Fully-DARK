draw_set_colour(c_blue);

draw_set_halign(fa_left);
draw_text_transformed(halfwidth+180, 190, string(round(mastervol*100)),2,2,0);
draw_text_transformed(halfwidth+180, 310, string(round(musicvol*100)), 2,2,0);
draw_text_transformed(halfwidth+180, 430, string(round(sfxvol*100)), 2,2,0);

draw_set_halign(fa_center);

draw_text_transformed(halfwidth, 40, "Settings", 4,4,0);

draw_text_transformed(halfwidth, 130, "Master",2,2,0);
draw_text_transformed(halfwidth, 240, "Music", 2,2,0);
draw_text_transformed(halfwidth, 360, "SFX", 2,2,0);

draw_line_width(halfwidth -150,190,halfwidth+150,190,2);
draw_line_width(halfwidth -150,310,halfwidth+150,310,2);
draw_line_width(halfwidth -150,430,halfwidth+150,430,2);

draw_sprite(Sprite10,0,halfwidth-150+(300*mastervol),190);
draw_sprite(Sprite10,0,halfwidth-150+(300*musicvol),310);
draw_sprite(Sprite10,0,halfwidth-150+(300*sfxvol),430);


switch (pos)
{
    case 0:
            draw_set_valign(fa_middle);
            draw_text_transformed(halfwidth - 180, 120, ">", 2,2,0);
        
            if (keyright) && (mastervol<1) mastervol+=0.01;
            if (keyleft) && (mastervol>0) mastervol-=0.01;
        break;
    case 1:
            draw_set_valign(fa_middle);
            draw_text_transformed(halfwidth - 180, 230, ">", 2,2,0);
        
            if (keyright) && (musicvol<1) musicvol+=0.01;
            if (keyleft) && (musicvol>0) musicvol-=0.01;
        break;        
            
    
    case 2:
            draw_set_valign(fa_middle);
            draw_text_transformed(halfwidth - 180, 340, ">", 2,2,0);
        
            if (keyright) && (sfxvol<1) sfxvol+=0.01;
            if (keyleft) && (sfxvol>0) sfxvol-=0.01;
        break;        
}