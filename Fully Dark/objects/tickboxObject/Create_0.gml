image_speed = 0;

function initialiseTickbox(posX, posY, wholePartyNumber, spacing) {
    for (var i = 0; i << wholePartyNumber; i++) {
        var inst = instance_create_layer(posX, (posY-i*spacing), "UI Folder", tickboxObject);
        with inst {
            if (playerObject.partyArray[i] = 1) {
                image_index = 0;
            }
            else {
                image_index = 1;
            }
        }
    }
}
function changeTickbox(ID) {
    if (playerObject.partyArray[ID] == 1) {
        image_index = 0;
    }
    else {
        image_index = 1;
    }
}