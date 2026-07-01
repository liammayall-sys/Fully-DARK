image_index = 0 + frameIndex;
if (buttonType = "transition") {
    transitionButton(menuFrom, menuTo);
    if (menuTo = "partyStatsUI") {
        initialisePartyStats(statsIndex);
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

if (buttonType = "partySwitch" and frameIndex >= 6) {
    switchPartyStats(1); //going forward
}

if (buttonType = "partySwitch" and frameIndex <= 5) {
    switchPartyStats(-1); //going backwards
}