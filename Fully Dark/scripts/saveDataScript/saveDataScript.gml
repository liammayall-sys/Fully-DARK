function saveDataLoad(savefileNumber) {
    if (file_exists($"savedata{savefileNumber}.txt") = false) {
        var _file = file_text_open_write($"savedata{savefileNumber}.txt");
        var _struct = {
            x: 128,
            y: 96,
            room: Muckshore
        }
        var _string = json_stringify(_struct);
        file_text_write_string(_file, _string);
        file_text_close(_file);
        return false;
    }
    else {
        var _file = file_text_open_read($"savedata{savefileNumber}.txt");
        var _json = file_text_read_string(_file);
        var _struct = json_parse(_json);
        file_text_close(_file);
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