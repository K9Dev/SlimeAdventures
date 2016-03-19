///scr_fire_modus
if (firemodus and firedamage = noone){
    firedamage = instance_create (x, y, obj_firedamage);
    firedamage.creator = id;
    sprite_index = spr_slime_player_fire_idle;
    firemodus = true;
}
