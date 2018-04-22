/// @description  load_high_score()

// prepare file
if !file_exists(FILE_HIGHSCORE) {
    var file = file_text_open_write(FILE_HIGHSCORE)
    file_text_write_string(file, "[]")
    file_text_close(file)
}

// load data
var data = read_json_file(FILE_HIGHSCORE)
ds_list_sort(data, false)

// return result
var result = array_create_compat(MAX_HIGHSCORE_RECORDS, 0)
for (var i = 0; i < ds_list_size(data) || i < MAX_HIGHSCORE_RECORDS; ++i) {
    result[i] = data[| i]
}
return result

