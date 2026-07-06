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
}
if (buttonType = "unpause") { //any button that unpauses the game or turns off the menu
    unpauseGame(menuFrom);
}
if (buttonType = "mainTransition") { //any button going to the main menu
    mainTransition(menuFrom, menuTo);
}

if (buttonType = "tickBox") { //button that is a tickbox
    
}
if (buttonType = "quitToMenu") {
    quitToMenu(menuFrom);
}

if (buttonType = "partySwitch" and frameIndex = 6) {
    if (global.currentIndex == 6) {
        global.currentIndex = -1;
    }
    singleFunc = false;
    switchTextFromArray(true, global.currentIndex, "partyStatsUI", "titleText", global.statsArray, 0, singleFunc); //going forward
    switchTextFromArray(true, global.currentIndex, "partyStatsUI", "hpText", global.statsArray, 1, singleFunc);
    switchTextFromArray(true, global.currentIndex, "partyStatsUI", "mpText", global.statsArray, 2, singleFunc);
    global.currentIndex = global.currentIndex + 1;
}

if (buttonType = "partySwitch" and frameIndex = 3) {
    if (global.currentIndex == 0) {
        global.currentIndex = 7;
    }
    singleFunc = false;
    switchTextFromArray(false, global.currentIndex, "partyStatsUI", "titleText", global.statsArray, 0, singleFunc); //going backwards
    switchTextFromArray(false, global.currentIndex, "partyStatsUI", "hpText", global.statsArray, 1, singleFunc);
    switchTextFromArray(false, global.currentIndex, "partyStatsUI", "mpText", global.statsArray, 2, singleFunc);
    global.currentIndex = global.currentIndex - 1;
}
