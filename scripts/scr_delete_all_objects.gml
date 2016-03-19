/// Find and delete all objects from a kind

var obj_kind = argument[0];

//var obj_nr = instance_number(obj_kind);

with (obj_kind){
    instance_destroy();
}

//while (obj_nr > 0){
//    obj = instance_find(obj_kind, obj_nr - 1);
    
//    instance_destroy();
    
//    Logger("Instance: " + string(obj) + " destroyed!"); 
    
//}
