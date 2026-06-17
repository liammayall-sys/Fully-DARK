image_speed = 0;
image_index = 0;

tickX = 1247;
tickY = 19;
fullParty = 7;
spacing = 105;
currentParty = 0;

global.mainMenuCheck = true;

function transitionButton(menuFrom, menuTo, mainmenu) {
    layer_set_visible(menuFrom, false);
    layer_set_visible(menuTo, true);
    if (mainmenu = true) {
        if (global.mainMenuCheck = true) {
            global.mainMenuCheck = false;
        }
        else {
            global.mainMenuCheck = true;
        }
    }
}