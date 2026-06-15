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
Sandra = 0;
Helene = 1;
Mira = 1;

for(var i = arraySize-1; i >= 0; i--) {
    pos_x[i] = x;
    pos_y[i] = y;
}

statsArray = [
    ["Caster The Skeleton", 80, 120, Caster, casterSprite],
    ["Samaroth Svaeda", 140, 100, Sam, samSprite],
    ["Astred Houlstrom", 100, 100, Astred, astredSprite],
    ["Breezy Bill Jenkins", 80, 120, Bill, billSprite],
    ["Alessandra Agosto", 120, 80, Sandra, sandraSprite],
    ["Helene", 150, 100, Helene, heleneSprite],
    ["Mira", 90, 110, Mira, miraSprite]
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

