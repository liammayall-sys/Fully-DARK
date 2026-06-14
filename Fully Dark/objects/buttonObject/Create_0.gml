image_speed = 0;
image_index = 0;

Caster = 0;
Sam = 0;
Astred = 0;
Bill = 1;
Sandra = 0;
Helene = 1;
Mira = 1;
tickX = 1247;
tickY = 19;
fullParty = 7;
spacing = 105;
currentParty = 0;

global.mainMenuCheck = 0; 

function initialiseTickbox(posX, posY, wholePartyNumber, spacing) {
    
    for (var i = 0; i <= (wholePartyNumber - 1); i++) {
        var inst = instance_create_layer(posX, (posY+i*spacing), "partySettingsUI", tickboxObject);
        with (inst) {
            tickboxObject.tickboxID = i;
            image_xscale = 2;
            image_yscale = 2;
            if (playerObject.statsArray[i, 3] = 1) {
                image_index = 0;
            }
            else {
                image_index = 1;
            }
        }
    }
    for (var i = 0; i <= 6; i++) {  
        playerObject.party = playerObject.statsArray[i, 3] + playerObject.party;
    }
    playerObject.setParty(playerObject.statsArray);
    
}
function tickChange(wholePartyNumber) {
    for (var i = 0; i <= (wholePartyNumber - 1); i++) {
        currentParty = playerObject.statsArray[i, 3] + currentParty;
    }
    if (playerObject.statsArray[buttonID, 3] == 1 and currentParty >> 1) {
        playerObject.statsArray[buttonID, 3] = 0;
    }
    else {
        playerObject.statsArray[buttonID, 3] = 1;
    }
    while instance_exists(tickboxObject) { 
        instance_destroy(tickboxObject);
    }
    currentParty = 0;
}