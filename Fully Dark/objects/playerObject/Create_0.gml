moveSpeed = 2;
tilemap = layer_tilemap_get_id("tilesWalls");
followerDistance = 16;
arraySize = 94;
followersOn = true;
fullParty = 0;
partyArray = [buttonObject.Caster, buttonObject.Sam, buttonObject.Astred, buttonObject.Bill, buttonObject.Sandra, buttonObject.Helene, buttonObject.Mira];
for (var i = 0; i <= 6; i++) {  
    fullParty = partyArray[i] + fullParty;
}
for(var i = arraySize-1; i >= 0; i--) {
    pos_x[i] = x;
    pos_y[i] = y;
}
if (followersOn == true) {
    for (var i = 1; i < fullParty; i += 1) {
        var follower_i = instance_create_layer(x,y, "Instances", followerObject);
            follower_i.record = followerDistance * i;
    }
}