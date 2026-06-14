moveSpeed = 2;
tilemap = layer_tilemap_get_id("tilesWalls");
followerDistance = 16;
arraySize = 128;
followersOn = true;
party = 0;

for(var i = arraySize-1; i >= 0; i--) {
    pos_x[i] = x;
    pos_y[i] = y;
}

statsArray = [
    ["Caster The Skeleton", 80, 120, buttonObject.Caster, casterSprite],
    ["Samaroth Svaeda", 140, 100, buttonObject.Sam, samSprite],
    ["Astred Houlstrom", 100, 100, buttonObject.Astred, astredSprite],
    ["Breezy Bill Jenkins", 80, 120, buttonObject.Bill, billSprite],
    ["Alessandra Agosto", 120, 80, buttonObject.Sandra, sandraSprite],
    ["Helene", 150, 100, buttonObject.Helene, heleneSprite],
    ["Mira", 90, 110, buttonObject.Mira, miraSprite]
]

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

setParty(statsArray);