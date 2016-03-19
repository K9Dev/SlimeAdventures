///loads the game file

var file;
var n0 = 0;
var n1 = 0;
var obj = 0;
var xpos = 0;
var ypos = 0;

file = get_open_filename("*.*","SlimeAdventures_save.ini");

ini_open(file);

/*scr_delete_all_objects(obj_lifeform_parent);

while (ini_key_exists("save", string(n0) + string(n1))){
    
    obj = ini_read_real("save", string(n0) + string(n1), 0);
    
    n1 += 1;
    
    xpos = ini_read_real("save", string(n0) + string(n1), 0);
    
    n1 += 1;
    
    ypos = ini_read_real("save", string(n0) + string(n1), 0);
    
    instance_create(xpos, ypos, obj);
    
    n0 += 1;
    n1 = 0;
}*/

ini_close();

