///scr_movement_state

scr_get_input ();

if (dash_key and obj_player_stats.stamina >= DASH_COST){
    state = scr_dash_state;
    alarm[0] = room_speed/8;
    obj_player_stats.alarm[0] = room_speed*2;
}

if (attack_key){
    image_index = 0;
    state = scr_attack_state;
}


//changing form
scr_transform_state ();

//get direction
dir = point_direction(0,0,xaxis, yaxis)

//get lenght
if (xaxis == 0 and yaxis == 0){
    lng = 0;
} else {
    lng = spd;
    scr_get_face ();
}
    
//get hspd and vspd
hspd = lengthdir_x (lng, dir);
vspd = lengthdir_y (lng, dir);

//move
phy_position_x += hspd;
phy_position_y += vspd;

//animation
image_speed = .2;
//if (lng == 0) image_index = 0;

//sprite control
//missing sprites for poison modus
switch (face){
    case RIGHT:
        if (firemodus){
            sprite_index = spr_slime_player_fire_right;
        } else if (poisonmodus){
            sprite_index = spr_slime_player_poison_idle;
        } else {
            sprite_index = spr_slime_player_right;
        }  
    break;
    
    case UP:
        if (firemodus){
            sprite_index = spr_slime_player_fire_up;
        } else if (poisonmodus){
            sprite_index = spr_slime_player_poison_idle;
        } else {
            sprite_index = spr_slime_player_up;
        }
    break;
    
    case LEFT:
        if (firemodus){
            sprite_index = spr_slime_player_fire_left;
        } else if (poisonmodus){
            sprite_index = spr_slime_player_poison_idle;
        } else {
            sprite_index = spr_slime_player_left;
        }
    break;
    
    case DOWN:
        if (firemodus){
            sprite_index = spr_slime_player_fire_idle;
        } else if (poisonmodus){
            sprite_index = spr_slime_player_poison_idle;
        } else {
        sprite_index = spr_slime_player_idle;
        }
    break;
}
