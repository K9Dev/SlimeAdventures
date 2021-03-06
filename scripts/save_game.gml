///saves the current game status

var file;
var obj_nr;
var n0;
var n1;
var obj;

file = get_save_filename("*.*","SlimeAdventures_save.ini");

if(file_exists(file)){
    file_delete(file);
}

ini_open(file);

var gameroom = room;

ini_write_real("room","roomname",gameroom); 


obj_nr = instance_number(obj_global_parent);

Logger("NR Instances: " + string(obj_nr));

n0 = 0;
n1 = 0;

while (obj_nr > 0){
    obj = instance_find(obj_global_parent, obj_nr - 1);
    
    ini_write_real("objects", string(n0) + string(n1), obj.object_index);
    n1 += 1;
    
    ini_write_real("objects", string(n0) + string(n1), obj.x);
    n1 += 1;
    
    ini_write_real("objects", string(n0) + string(n1), obj.y);
    obj_nr -= 1;
    
    n0 += 1;
    n1 = 0;
}

ini_close();

if (file_exists(file)){
   Logger("Saved gamefile!");
}


