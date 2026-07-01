var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * moveSpeed, _ver * moveSpeed, tilemap);

if (x != xprevious or y != yprevious) {
    for(var i = arraySize-1; i > 0; i--) {
        pos_x[i] = pos_x[i-1];
        pos_y[i] = pos_y[i-1];
    }
    pos_x[0] = x;
    pos_y[0] = y;
}

if (y != yprevious) {
    depth = -y;
}