moveSpeed = 2;
tilemap = layer_tilemap_get_id("tilesWalls");
followerDistance = 16;
arraySize = 128;
followersOn = true;
party = 0;
Caster = 0;
Sam = 0;
Astred = 0;
Bill = 0;
Sable = 0;
Hazel = 1;
Jiya = 1;

for(var i = arraySize-1; i >= 0; i--) {
    pos_x[i] = x;
    pos_y[i] = y;
}

statsArray = [
    ["Caster The Skeleton", 80, 120, Caster, casterSprite],
    ["Samaroth Svaeda", 140, 100, Sam, samSprite],
    ["Astred Houlstrom", 100, 100, Astred, astredSprite],
    ["\"Breezy\" Bill Skyler", 80, 120, Bill, billSprite],
    ["Alisabelle Agosto", 120, 80, Sable, sandraSprite],
    ["Hazel Thorncroft", 150, 100, Hazel, heleneSprite],
    ["Jiya Eversworn", 90, 110, Jiya, miraSprite]
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