/// Get Player Input

//1 or 0
key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("A"));
key_up = -keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

key_dash = keyboard_check_pressed(ord ("E"));

key_save = keyboard_check_pressed(ord("K"));
key_load = keyboard_check_pressed(ord("L"));


key_attack = mouse_check_button(mb_left);

key_state_change_fire = keyboard_check_pressed(ord ("F"));

//Move -1 if left, 1 if right
move_x = key_left + key_right;
move_y = key_up + key_down;
