///Player Step

//Player Input
iL = keyboard_check(vk_left) or keyboard_check(ord('A'));
iR = keyboard_check(vk_right) or keyboard_check(ord('D'));
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
x = player_current_planet.x + lengthdir_x(player_current_planet.planet_surface_radius,direction);
y = player_current_planet.y + lengthdir_y(player_current_planet.planet_surface_radius,direction);

//Player Animation
image_angle = point_direction(x,y,player_current_planet.x,player_current_planet.y)+90;

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




