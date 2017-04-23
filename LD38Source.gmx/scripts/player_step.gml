///Player Step

//Player Input
iL = keyboard_check(vk_left) or keyboard_check(ord('A'));
iR = keyboard_check(vk_right) or keyboard_check(ord('D'));
iU = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord('W'));
iD = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord('S'));
iNULL = !iL and !iR;

//Player Movement
if(iL)
{
    direction += player_speed/room_speed;
    image_xscale = -1;
}
if(iR)
{
    direction -= player_speed/room_speed;
    image_xscale = 1;
}
if(iNULL)
{
    image_speed = 0;
    image_index = 0;
}
else image_speed = 0.15;
if(direction >= 360) direction -= 360;
if(direction < 0)    direction += 360;

//Player Position
//if(player_current_planet != noone) and (!player_surfaced) and (player_landing)
//{
    x = player_current_planet.x + lengthdir_x(player_current_planet.planet_surface_radius,direction);
    y = player_current_planet.y + lengthdir_y(player_current_planet.planet_surface_radius,direction);
//}

//Player Animation
if(player_current_planet != noone) image_angle = point_direction(x,y,player_current_planet.x,player_current_planet.y)+90;
//else image_angle = point_direction(x,y,instance_nearest(x,y,o_Planet).x,instance_nearest(x,y,o_Planet).y)+90;
else image_angle = direction-90;

/*TOOLS*/
if(mouse_check_button(mb_left))
{
    tool_dir_to_mouse = point_distance(x,y,mouse_x,mouse_y)-view_angle;
    if(image_xscale = -1)
    {
        tool_dir += tool_speed;
        tool_xscale = -1;
        tool_x = x;
        tool_y = y;
        player_speed = 20; 
    }
    else
    {
        tool_dir -= tool_speed;
        tool_xscale = 1;
        tool_x = x;
        tool_y = y;
        player_speed = 20;
    }
}
else
{
    player_speed = 10;
}
if(tool_dir >= 360) tool_dir -= 360;
if(tool_dir < 0) tool_dir += 360;

//Planet Jumping
/*
var nier = instance_nth_nearest(x,y,o_Planet,2);
if(iU) and (player_current_planet != noone)
{
    player_current_planet = noone;
    motion_add(-image_angle-90,1);
}
if(iD) and (player_current_planet == noone)
{
    if(!player_landing)
    {
        nier = instance_nearest(x,y,o_Planet);
        motion_add(point_direction(x,y,nier.x,nier.y),2);
        player_landing = true;
    }
}
if(!player_surfaced) and (player_landing)
{
    nier = instance_nearest(x,y,o_Planet);
    if(point_distance(x,y,nier.x,nier.y) < nier.planet_surface_radius)
    {
        player_current_planet = nier;
        x = player_current_planet.x + lengthdir_x(player_current_planet.planet_surface_radius,direction);
        y = player_current_planet.y + lengthdir_y(player_current_planet.planet_surface_radius,direction);
        player_surfaced = true;
        player_landing  = false;
    }
    else
    {
        direction = point_direction(x,y,nier.x,nier.y);
        image_angle = direction+180;
    }
}
*/


