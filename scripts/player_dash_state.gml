/// Player Dash
len = movespeed * 4;

xspeed = lengthdir_x(len, dir_xy);
yspeed = lengthdir_y(len, dir_xy);

phy_position_x += xspeed;
phy_position_y += yspeed;

// Create Dash Effect
var dash = instance_create(phy_position_x, phy_position_y, obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;
