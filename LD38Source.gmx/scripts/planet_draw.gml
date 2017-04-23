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

//draw_line(x,y,global.first.x,global.first.y);

draw_set_colour(c_black);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text_transformed(x,y,string(id),planet_size,planet_size,0);
draw_set_colour(c_white);

//Draw Life
draw_sprite_ext(s_Player,life_frame,life_x,life_y,life_move_left*-1,1,life_angle,c_white,1);
if(life_speak)
{
    draw_set_valign(fa_bottom);
    draw_set_halign(fa_center);
    draw_text_outline_ext(x+lengthdir_x(planet_surface_radius+16,life_dir),y+lengthdir_y(planet_surface_radius+16,life_dir),life_text,c_black,2,1,1,life_angle);
}
