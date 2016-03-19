///scr_transform_state

//change into fire slime
if (fire_key and obj_player_stats.alarm [2] <= 0 and instance_exists (obj_player_fire) == false) and obj_player_stats.mana >= 0{ 
    obj_player_stats.alarm[2] = 120;
    //room.speed*2; seems to cause bugs after player death
    var x0 = x;
    var y0 = y;
    var image0 = image_index;
    instance_destroy ();
    if !(instance_exists (obj_player)){
        instance_create (x0, y0, obj_player_fire);
        firemodus = true;
    }
    image_index = image0;
}
//change back
if (fire_key and obj_player_stats.alarm [2] <= 0 and instance_exists (obj_player_fire) == true){
    obj_player_stats.alarm[2] = 120;
    //room.speed*2;
    var x0 = x;
    var y0 = y;
    var image0 = image_index;
    instance_destroy ();
    if !(instance_exists (obj_player)){
       instance_create (x0, y0, obj_player);
        firemodus = false;
    }
    image_index = image0;
}
//duplicated code; needs rearrangement
//change into poison slime
if (poison_key and obj_player_stats.alarm [2] <= 0 and instance_exists (obj_player_poison) == false) and obj_player_stats.mana >= 0{ 
    obj_player_stats.alarm[2] = 120;
    //room.speed*2;
    var x0 = x;
    var y0 = y;
    var image0 = image_index;
    instance_destroy ();
    if !(instance_exists (obj_player)){
        instance_create (x0, y0, obj_player_poison);
        firemodus = true;
    }
    image_index = image0;
}
//change back
if (poison_key and obj_player_stats.alarm [2] <= 0 and instance_exists (obj_player_poison) == true){
    obj_player_stats.alarm[2] = 120;
    //room.speed*2;
    var x0 = x;
    var y0 = y;
    var image0 = image_index;
    instance_destroy ();
    if !(instance_exists (obj_player)){
       instance_create (x0, y0, obj_player);
        firemodus = false;
    }
    image_index = image0;
}
