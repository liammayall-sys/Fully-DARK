image_speed = 0;
function tickCheck(partyArray) {
    for (var i = 0; i <= 6; ++ i) {
        if (tickboxID == i) {
            if (partyArray[i] == 1) {
                image_index = 0;
            }
            else {
                image_index = 1;
            }
        }
    }
}