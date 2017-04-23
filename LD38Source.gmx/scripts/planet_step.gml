//Step Planet

//Simulate Life
if(life_timer > 0) life_timer--;
else
{
    life_moving = choose(true,false);
    life_timer = irandom(10)*room_speed;
}

if(life_moving)
{
    if(life_move_left = 1)
    {
        life_dir += 10/room_speed;
    }
    else
    {
        life_dir -= 10/room_speed;
    }
    life_frame += life_frame_speed;
    if(life_frame > sprite_get_number(s_Player)) life_frame = 0;
}
else
{
    life_frame = 0;
}

life_x = x + lengthdir_x(planet_surface_radius,life_dir);
life_y = y + lengthdir_y(planet_surface_radius,life_dir);
life_angle = point_direction(life_x,life_y,x,y)+90;
