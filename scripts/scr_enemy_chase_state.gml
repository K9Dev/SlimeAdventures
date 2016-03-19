///scr_enemy_chase_state

phy_position_x += sign (targetx - x)*spd;
phy_position_y += sign (targety - y)*spd;
if (alarm[2] <= 0){
    scr_check_for_player ();
}
