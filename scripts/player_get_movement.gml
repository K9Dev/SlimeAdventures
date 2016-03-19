scr_get_input();

// save and load game

if(key_save){
    save_game();
}

if(key_load){
    load_game();    
}

if(key_dash){
    state = player_dash_state;
    alarm[0] = room_speed / 5;
}

if(key_state_change_fire){
    change_state = true;
    curr_sprite = sprite_index;
    state = player_statechange_fire;
    alarm[1] = room_speed * 3;
}

if(!change_state){
    scr_set_player_sprites(spr_mage_right, spr_mage_left, spr_mage_up, spr_mage_down);
}

xspeed = move_x * movespeed;
yspeed = move_y * movespeed;

dir_xy = point_direction(0,0,move_x,move_y);

if(move_x == 0 and move_y == 0){
  len = 0;        
} else{
  len = movespeed;
}

xspeed = lengthdir_x(len, dir_xy);
yspeed = lengthdir_y(len, dir_xy);

scr_get_dir();

//Logger("X Speed = " + string(xspeed));
//Logger("Y Speed = " + string(yspeed));
phy_position_x += xspeed;
phy_position_y += yspeed;

var standing = false;

if(xspeed == 0 and yspeed == 0){
          standing = true;
}

scr_stay_current_state();

if (!standing) {

    if(change_state){
        cloud = false;     
    }else{
        cloud = true;   
    }
    
    //Player Animation
    switch (facing_dir){
        case RIGHT:
            Logger("Dir = RIGHT");
            
            sprite_index = right_sprite;
            state_still = RIGHT_STILL;   
            
            break;
            
        case UP:
            Logger("Dir = UP");
    
            sprite_index = up_sprite;
            state_still = UP_STILL; 
            
            break;
            
        case LEFT:
            Logger("Dir = LEFT");
             
            sprite_index = left_sprite;
            state_still = LEFT_STILL;
             
            break;
            
        case DOWN:
            Logger("Dir = DOWN");
    
            sprite_index = down_sprite;
            state_still = DOWN_STILL;
             
            break;
    }
/*
    case RIGHT:
         Logger("Dir = RIGHT");
         if(change_state){
            sprite_index = spr_enemy_slime;
         }else{
            sprite_index = spr_mage_right;
            state_still = RIGHT_STILL;
         }    
        
         break;
        
    case UP:
        Logger("Dir = UP");
        if(change_state){
            sprite_index = spr_enemy_slime;
         }else{
            sprite_index = spr_mage_up;
            state_still = UP_STILL; 
         }
        
         break;
        
    case LEFT:
         Logger("Dir = LEFT");
         if(change_state){
            sprite_index = spr_enemy_slime;
         }else{
            sprite_index = spr_mage_left;
            state_still = LEFT_STILL;
         }
         
         break;
        
    case DOWN:
         Logger("Dir = DOWN");
         if(change_state){
            sprite_index = spr_enemy_slime;
         }else{
            sprite_index = spr_mage_down;
            state_still = DOWN_STILL;
         }
        
         break;
        }
*/
}else{
   if(change_state){
            sprite_index = spr_enemy_slime;
         } 
}


