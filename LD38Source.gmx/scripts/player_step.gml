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
else image_speed = 0.1;
if(direction >= 360) direction -= 360;
if(direction < 0)    direction += 360;

//Player Position
x = player_current_planet.x + lengthdir_x(player_current_planet.planet_surface_radius,direction);
y = player_current_planet.y + lengthdir_y(player_current_planet.planet_surface_radius,direction);

//Player Animation
image_angle = point_direction(x,y,player_current_planet.x,player_current_planet.y)+90;
