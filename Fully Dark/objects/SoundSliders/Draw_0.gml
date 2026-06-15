draw_set_colour(c_blue);

draw_set_halign(fa_left);
draw_text_transformed(halfwidth+horOffset+horTextOffset, upperOffset+(1.5*verOffset), string(round(mastervol*100)),2,2,0);
draw_text_transformed(halfwidth+horOffset+horTextOffset, upperOffset+(2.5*verOffset), string(round(musicvol*100)), 2,2,0);
draw_text_transformed(halfwidth+horOffset+horTextOffset, upperOffset+(3.5*verOffset), string(round(sfxvol*100)), 2,2,0);

draw_set_halign(fa_center);

draw_text_transformed(halfwidth, upperOffset, "Settings", 4,4,0);

draw_text_transformed(halfwidth, upperOffset+(1*verOffset), "Master", 2, 2, 0);
draw_text_transformed(halfwidth, upperOffset+(2*verOffset), "Music", 2, 2, 0);
draw_text_transformed(halfwidth, upperOffset+(3*verOffset), "SFX", 2, 2, 0);

draw_line_width(halfwidth-horOffset, upperOffset+(1.5*verOffset), halfwidth+horOffset, upperOffset+(1.5*verOffset), 2);
draw_line_width(halfwidth-horOffset, upperOffset+(2.5*verOffset), halfwidth+horOffset, upperOffset+(2.5*verOffset), 2);
draw_line_width(halfwidth-horOffset, upperOffset+(3.5*verOffset), halfwidth+horOffset, upperOffset+(3.5*verOffset), 2);

draw_sprite(Sprite10, 0, halfwidth-horOffset+(300*mastervol), upperOffset+(1.5*verOffset));
draw_sprite(Sprite10, 0, halfwidth-horOffset+(300*musicvol), upperOffset+(2.5*verOffset));
draw_sprite(Sprite10, 0, halfwidth-horOffset+(300*sfxvol), upperOffset+(3.5*verOffset));


switch (pos)
{
    case 0:
            draw_set_valign(fa_middle);
            draw_text_transformed(halfwidth-horOffset+horTextOffset, upperOffset+(1*verOffset), ">", 2,2,0);
        
            if (keyright) && (mastervol<1) mastervol+=0.01;
            if (keyleft) && (mastervol>0) mastervol-=0.01;
        break;
    case 1:
            draw_set_valign(fa_middle);
            draw_text_transformed(halfwidth-horOffset+horTextOffset, upperOffset+(2*verOffset), ">", 2,2,0);
        
            if (keyright) && (musicvol<1) musicvol+=0.01;
            if (keyleft) && (musicvol>0) musicvol-=0.01;
        break;        
            
    
    case 2:
            draw_set_valign(fa_middle);
            draw_text_transformed(halfwidth-horOffset+horTextOffset, upperOffset+(3*verOffset), ">", 2,2,0);
        
            if (keyright) && (sfxvol<1) sfxvol+=0.01;
            if (keyleft) && (sfxvol>0) sfxvol-=0.01;
        break;        
}