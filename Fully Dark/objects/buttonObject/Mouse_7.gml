image_index = 0;
if (menuID ==3){
        switch (buttonID) {
        	case 0: //Audio Settings
                if (global.mainMenuCheck == 1){
                    layer_set_visible("pauseMenuUI", true);
                    layer_set_visible("Settings", false);
                }
                if (global.mainMenuCheck == 0){
                    layer_set_visible("mainMenuUI", true);
                    layer_set_visible("Settings", false);
                }
                break
        }
}
if (menuID == 2) {
    switch (buttonID) { 
        case 0: //Caster The Skeleton
            tickChange(fullParty);
            initialiseTickbox(tickX, tickY, fullParty, spacing);
            break 
        case 1: //Samaroth Svaeda
            tickChange(fullParty);
            initialiseTickbox(tickX, tickY, fullParty, spacing);
            break 
        case 2: //Astred Houlstrom
            tickChange(fullParty);
            initialiseTickbox(tickX, tickY, fullParty, spacing);
            break 
        case 3: //Breezy Bill Jenkins
            tickChange(fullParty);
            initialiseTickbox(tickX, tickY, fullParty, spacing);
            break 
        case 4: //Alessandra Agosto
            tickChange(fullParty);
            initialiseTickbox(tickX, tickY, fullParty, spacing);
            break 
        case 5: //Helene
            tickChange(fullParty);
            initialiseTickbox(tickX, tickY, fullParty, spacing);
            break 
        case 6: //Mira
            tickChange(fullParty);
            initialiseTickbox(tickX, tickY, fullParty, spacing);
            break 
        case 7: //Back Button
            layer_set_visible("partySettingsUI", false);
            layer_set_visible("pauseMenuUI", true);
            break
    }
}
if (menuID == 1) { //Main menu
    switch (buttonID) { 
        case 2: //Quit Game
            game_end()
            break 
        case 1: //Settings
            layer_set_visible("mainMenuUI", false);
            layer_set_visible("Settings", true);
            global.mainMenuCheck = 0;
            break 
        case 0: //New Game
            room_goto(Muckshore);
            audio_sound_gain(MainTitleGR, 0, 1000);
            break
    }
} 
if (menuID == 0) { //Pause Menu
    switch (buttonID) { 
        case 4: //Main menu
            room_goto(MainMenu);
            break 
        case 3: //Calendar
            break 
        case 2: //Party
            layer_set_visible("pauseMenuUI", false);
            layer_set_visible("partySettingsUI", true);
            initialiseTickbox(1247, 19, 7, 105);
            break 
        case 1: //Settings
            global.mainMenuCheck = 1;
            layer_set_visible("pauseMenuUI", false);
            layer_set_visible("Settings", true);
            break 
        case 0: //Resume
            layer_set_visible("pauseMenuUI", false);
            playerControllerObject.canBePaused = true;
            break
    }
}