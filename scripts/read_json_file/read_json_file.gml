/// @description  read_json_file(filepath)
/// @param filepath

var file = file_text_open_read(argument0)

var content = ""
while !file_text_eof(file) {
    content += file_text_readln(file)
}
file_text_close(file)

return json_decode(content)

