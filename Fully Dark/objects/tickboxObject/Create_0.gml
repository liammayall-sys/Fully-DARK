image_speed = 0;
function changeTickbox() {
    var inst = instance_nearest(mouse_x, mouse_y, tickboxObject);
    with inst {    
        if (playerObject.partyArray[tickboxID] == 1) {
            image_index = 0;
        }
        else {
            image_index = 1;
        }
    }
}