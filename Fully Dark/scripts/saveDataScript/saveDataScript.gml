function newGame(savefileNumber) {
    var _file = file_text_open_write($"savedata{savefileNumber}.txt"); //new file with default values
    global.saveStruct = {
        x: 128,
        y: 96,
        room: asset_get_index(Muckshore)
    }
    jsonReadWrite(false, global.saveStruct, _file);
    return false;
}

function saveGame(savefileNumber) {
    var _file = file_text_open_write($"savedata{savefileNumber}.txt");
    var _struct = {
        x: global.currentPosX,
        y: global.currentPosY,
        room: global.currentRoom
    }
    jsonReadWrite(false, _struct, _file);
}

function loadGame(savefileNumber) {
    if file_exists($"savedata{savefileNumber}.txt") {
        var _file = file_text_open_read($"savedata{savefileNumber}.txt");
        global.saveStruct = jsonReadWrite(true, 0, _file);
    }
}

function jsonReadWrite(read, struct, file) {
    if (read) {
        var _json = file_text_read_string(file);
        var _struct = json_parse(_json);
        file_text_close(file);
        return _struct;
    }
    else {
        var _string = json_stringify(struct);
        file_text_write_string(file, _string);
        file_text_close(file);
    }
}