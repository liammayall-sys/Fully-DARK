image_index = 0;
switch (menuID) { 
    case 1:
    switch (buttonID) { 
        case 2:
            game_end()
            break 
        case 1:
            break
        case 0:
            room_goto(Muckshore);
            audio_sound_gain(MainTitleGR, 0, 1000);
            break
    } 
    case 0:
        switch (buttonID) { 
            case 2:
                room_goto(MainMenu);
                break 
            case 1:
                break 
            case 0:
                layer_set_visible("pauseMenuUI", false);
                break
            }
    }