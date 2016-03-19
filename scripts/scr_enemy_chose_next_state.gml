///scr_enemy_chose_next_state

if (alarm[0] <= 0){
    alarm[0] = room.speed*5;
    alarm[1] = room.speed*3
    targetx = random (room_width);
    targety = random (room_height);
    state = choose (scr_enemy_idle_state, scr_enemy_wander_state);
    
}
