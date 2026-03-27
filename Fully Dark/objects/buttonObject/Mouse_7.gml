image_index = 0;
if (menuID ==3){
        switch (buttonID) {
        	case 0:
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
            case 7: //Back Button
                layer_set_visible("partySettingsUI", false);
                layer_set_visible("pauseMenuUI", true);
                break
            case 6: //Caster The Skeleton
                if (playerObject.partyArray[0] == 1) {
                    playerObject.partyArray[@ 0] = 0;
                    Caster = 0;
                }
                else {
                    playerObject.partyArray[@ 0] = 1
                    Caster = 1;
                }
                
                break
            case 5: //Samaroth Svaeda
                if (playerObject.partyArray[1] == 1) {
                    playerObject.partyArray[@ 1] = 0;
                    Sam = 0;
                }
                else {
                    playerObject.partyArray[@ 1] = 1
                    Sam = 1;
                }
                
                break
            case 4: //Astred Houlstrom
                if (playerObject.partyArray[2] == 1) {
                    playerObject.partyArray[@ 2] = 0;
                    Astred = 0;
                }
                else {
                    playerObject.partyArray[@ 2] = 1
                    Astred = 1;
                }
                break
            case 3: //Breezy Bill Jenkins
                if (playerObject.partyArray[3] == 1) {
                    playerObject.partyArray[@ 3] = 0;
                    Bill = 0;
                }
                else {
                    playerObject.partyArray[@ 3] = 1
                    Bill = 1;
                }
                break
            case 2: //Alessandra Agosto
                if (playerObject.partyArray[4] == 1) {
                    playerObject.partyArray[@ 4] = 0;
                    Sandra = 0;
                }
                else {
                    playerObject.partyArray[@ 4] = 1
                    Sandra = 1;
                }
                break
            case 1: //Helene
                if (playerObject.partyArray[5] == 1) {
                    playerObject.partyArray[@ 5] = 0;
                    Helene = 0;
                }
                else {
                    playerObject.partyArray[@ 5] = 1
                    Helene = 1;
                }
                break
            case 0: //Mira
                if (playerObject.partyArray[6] == 1) {
                    playerObject.partyArray[@ 6] = 0;
                    Mira = 0;
                }
                else {
                    playerObject.partyArray[@ 6] = 1
                    Mira = 1;
                }
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
                tickboxObject.tickCheck(playerObject.partyArray);
                break 
            case 1: //Settings
                global.mainMenuCheck = 1;
                layer_set_visible("pauseMenuUI", false);
                layer_set_visible("Settings", true);
                break 
            case 0: //Resume
                layer_set_visible("pauseMenuUI", false);
                break
            }
}