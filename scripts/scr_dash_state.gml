///scr_dash_state
if (lng == 0){
    dir = face*90;
}
lng = spd*4;

if(!right_key and !left_key and !up_key and !down_key and dash_key){
    exit;
}

//dashcost
obj_player_stats.stamina = obj_player_stats.stamina - DASH_COST;

//get hspd and vspd
hspd = lengthdir_x (lng, dir);
vspd = lengthdir_y (lng, dir);

//move
phy_position_x += hspd;
phy_position_y += vspd;

//dash effect
var dash = instance_create (x,y,obj_dash_effect);
dash.image_index = image_index;
dash.sprite_index = sprite_index;


