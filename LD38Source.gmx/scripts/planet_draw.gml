///Draw Planet

draw_set_colour(c_white);

//Grass
for(var i = 0; i< planet_grass; i++)
{
    draw_sprite_ext(s_Grass,irandom(sprite_get_number(s_Grass)),
                    x+lengthdir_x(planet_surface_radius,i*(360/planet_grass)),
                    y+lengthdir_y(planet_surface_radius,i*(360/planet_grass)),
                    1,1,point_direction(x,y,
                    x+lengthdir_x(planet_surface_radius,i*(360/planet_grass)),
                    y+lengthdir_y(planet_surface_radius,i*(360/planet_grass)))-90,
                    c_white,1);
}

draw_circle(x,y,planet_size*planet_size_mod,false);
//draw_circle(x,y,planet_surface_radius,true);
