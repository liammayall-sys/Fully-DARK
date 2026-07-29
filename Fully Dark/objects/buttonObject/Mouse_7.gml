image_index = 0 + frameIndex;
if (buttonType = "transition") {
    transitionButton(menuFrom, menuTo);
    if (menuTo = "partyStatsUI") {
        initialiseTextChange(statsIndex, "partyStatsUI", "titleText", global.statsArray, 0);
        initialiseTextChange(statsIndex, "partyStatsUI", "hpText", global.statsArray, 1);
        initialiseTextChange(statsIndex, "partyStatsUI", "mpText", global.statsArray, 2);
        global.currentIndex = statsIndex;
    }
}

if (buttonType = "quit") { //quit game button
    quitGame();
}
if (buttonType = "newGame") { //new game button
    newGame();
    if (menuTo = "saveFileUI") {
        for (var i = 0; i < 3; i += 1) {
            if (file_exists($"savedata{i}.txt") = true) {
                layer_text_text(getTextID("saveFileUI", $"saveFile{i+1}"), $"savefile {i+1}");
            }
        }
    }
}

if (buttonType = "unpause") { //any button that unpauses the game or turns off the menu
    unpauseGame(menuFrom);
}

if (buttonType = "mainTransition") { //any button going to the main menu
    mainTransition(menuFrom, menuTo);
}

if (buttonType = "saveFile") { //button that is a save file
    saveDataLoad(statsIndex);
    transitionButton(menuFrom, menuTo);
}

if (buttonType = "quitToMenu") {
    quitToMenu(menuFrom);
}

if (buttonType = "gameStart") {
    transitionStart(Muckshore, fadeOutSequence, fadeInSequence);
}

if (buttonType = "partySwitch" and frameIndex = 6) {
    if (global.currentIndex == 6) {
        global.currentIndex = -1;
    }
    switchTextFromArray(true, global.currentIndex, "partyStatsUI", "titleText", global.statsArray, 0, false); //going forward
    switchTextFromArray(true, global.currentIndex, "partyStatsUI", "hpText", global.statsArray, 1, false);
    switchTextFromArray(true, global.currentIndex, "partyStatsUI", "mpText", global.statsArray, 2, true);
}

if (buttonType = "partySwitch" and frameIndex = 3) {
    if (global.currentIndex == 0) {
        global.currentIndex = 7;
    }
    switchTextFromArray(false, global.currentIndex, "partyStatsUI", "titleText", global.statsArray, 0, false); //going backwards
    switchTextFromArray(false, global.currentIndex, "partyStatsUI", "hpText", global.statsArray, 1, false);
    switchTextFromArray(false, global.currentIndex, "partyStatsUI", "mpText", global.statsArray, 2, true);
}
