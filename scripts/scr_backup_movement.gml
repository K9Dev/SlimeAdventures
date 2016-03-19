if (right_key) {
    phy_position_x += spd;
    sprite_index = spr_player_right;
    image_speed = 0.2;
    }
if (left_key) {
    phy_position_x -= spd;
    sprite_index = spr_player_left;
    image_speed = 0.2;
    }
if (up_key) {
    phy_position_y -= spd;
    sprite_index = spr_player_up;
    image_speed = 0.2;
    }
if (down_key) {
    phy_position_y += spd;
    sprite_index = spr_player_down;
    image_speed = 0.2;
    }
    
//stop walking animation
if(!right_key and !left_key and !up_key and !down_key) {
    image_speed = 0;
    image_index = 0;
    }
 //sprite animation   
if (vspd > 0){
    sprite_index = spr_player_down;
    } else if (vspd < 0){
        sprite_index = spr_player_up;
    }
if (hspd > 0) {
    sprite_index = spr_player_right;
    } else if ( hspd < 0) {
        sprite_index = spr_player_left;
    }
