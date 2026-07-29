global.canBePaused = true;

function initialisePlayer(savefileNumber) {
    var _file = file_text_open_read($"savedata{savefileNumber}.txt");
    var _json = file_text_read_string(_file);
    var _struct = json_parse(_json);
    instance_destroy(playerObject);
    instance_create_layer(_struct.x, _struct.y, "Instances", playerObject, _struct);
    file_text_close(_file);
}

