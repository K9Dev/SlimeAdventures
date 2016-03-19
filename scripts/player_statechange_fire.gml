///Change State to Fire

if(change_state){

    Logger("Change_State = true");
//    sprite_index = spr_enemy_slime;
    scr_set_player_sprites(spr_enemy_slime, spr_enemy_slime, spr_enemy_slime, spr_enemy_slime);
    cloud = false;
    state = player_get_movement;

}
