moveSpeed = 2;
tilemap = layer_tilemap_get_id("tilesWalls");
followerDistance = 16;
arraySize = 94;
currentPartyMembers = 3;
for(var i = arraySize-1; i >= 0; i--) {
    pos_x[i] = x;
    pos_y[i] = y;
}
for (var i = 1; i < currentPartyMembers; i += 1) {
    var follower_i = instance_create_layer(x,y, "Instances", followerObject);
        follower_i.record = followerDistance * i;
}