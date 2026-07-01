moveSpeed = 2;
tilemap = layer_tilemap_get_id("tilesWalls");
followerDistance = 16;
arraySize = 128;
followersOn = true;
party = false;


for(var i = arraySize-1; i >= 0; i--) {
    pos_x[i] = x;
    pos_y[i] = y;
}



function setParty(stats) {
    if (followersOn == true) {
        instance_destroy(followerObject);
        for (var i = 1; i < party; i += 1) {
            var follower_i = instance_create_layer(x,y, "Instances", followerObject);
            follower_i.record = followerDistance * i;
            with follower_i {
                if (stats[i, 3] == 1) {
                    object_set_sprite(followerObject, stats[i, 4])
                }
            }
        }
        party = 0;
    }
}

function collisionCheck() {
    if (place_meeting(x, y, intObject) = true) {
        var inst = instance_place(x, y, intObject);
        with inst {
            intObject.interaction();
        }
    }
}