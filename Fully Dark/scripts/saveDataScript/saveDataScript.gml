function saveDataLoad(savefileNumber) {
    if (file_exists($"savedata{savefileNumber}.txt") = false) {
        var _file = file_text_open_write($"savedata{savefileNumber}.txt");
        var _struct = {
            x: 128,
            y: 96,
            room: Muckshore
        }
        global.saveStruct = jsonReadWrite(false, _struct, _file);
        return false;
    }
    else {
        var _file = file_text_open_read($"savedata{savefileNumber}.txt");
        jsonReadWrite(true, 0, _file);
        return true;
    }
}

function saveGame(savefileNumber, instance) {
    if (file_exists($"savedata{savefileNumber}.txt")) = false {
        var _file = file_text_open_write($"savedata{savefileNumber}.txt");
        with instance {
            var _struct = {
                x: playerObject.x,
                y: playerObject.y,
                room: global.currentRoom
            }
            var _string = json_stringify(_struct);
            file_text_write_string(_file, _string);
        }
    }
}

function jsonReadWrite(read, struct, file) {
    if (read) {
        var _json = file_text_read_string(file);
        struct = json_parse(_json);
        file_text_close(file);
        return struct;
    }
    else {
        var _string = json_stringify(struct);
        file_text_write_string(file, _string);
        file_text_close(file);
    }
}