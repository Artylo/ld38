//Step Planet

//Simulate Life
if(life_timer > 0) life_timer--;
else
{
    life_moving = choose(true,false);
    life_speak = choose(true,false);
    life_text = life_talk();
    life_timer = irandom_range(5,10)*room_speed;
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
if(life_sound_timer < 0)
    {
        audio_play_sound(choose(w1,w2,w3,w4,w5,w6,w7),0,false);
        life_sound_timer = irandom_range(15,30)*room_speed;
    }
    else life_sound_timer--;

life_x = x + lengthdir_x(planet_surface_radius,life_dir);
life_y = y + lengthdir_y(planet_surface_radius,life_dir);
life_angle = point_direction(life_x,life_y,x,y)+90;
