image_speed = 0;
image_index = frameIndex;
spacing = 105;

function quitToMenu(menuFromI) {
    layer_set_visible(menuFromI, false);
    room_goto(MainMenu);
    mainMenuSwitch();
}

function mainMenuSwitch() {
    if (file_exists("savedata1.txt") or file_exists("savedata2.txt") or file_exists("savedata3.txt")) {
        layer_set_visible("resumeMainMenuUI", true);
    }
    else {
        layer_set_visible("mainMenuUI", true);
    }
}

function transitionButton(menuFromI, menuToI) {
    layer_set_visible(menuFromI, false);
    if (menuToI = "mainMenuUI") {
        mainMenuSwitch();
    }
    else {
        layer_set_visible(menuToI, true);
    }
}

function quitGame() {
    game_end();
}

function unpauseGame(menuFromI) {
    layer_set_visible(menuFromI, false);
    global.canBePaused = true;
}

function newGameButton() {
    global.mainMenuCheck = false;
    layer_set_visible("mainMenuUI", false);
    layer_set_visible("resumeMainMenuUI", false);
    layer_set_visible("saveFileUI", true);
}

function mainTransition(menuFromI, menuToI) {
    layer_set_visible(menuFromI, false);
    if global.mainMenuCheck = true {
        mainMenuSwitch();
    }
    else {
        layer_set_visible(menuToI, true);
    }
}