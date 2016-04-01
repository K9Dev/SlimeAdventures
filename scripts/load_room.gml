///loads the game file
var file;
var n0 = 0;
var n1 = 0;
var obj = 0;
var xpos = 0;
var ypos = 0;

file = get_open_filename("*.*","SlimeAdventures_save.ini");

ini_open(file);

var gameroom = ini_read_real("room","roomname",rm_hallway);

room_goto(gameroom);

global.gameLoad = 1;

Logger("Goto room excecuted and gameload global set to " + string(global.gameLoad));

ini_close();
