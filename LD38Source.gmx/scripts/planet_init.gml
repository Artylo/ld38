///Init Planet
planet_size = irandom_range(1,5);
planet_size_mod = 64; // Radius
planet_surface_radius = planet_size*planet_size_mod+14;

///Generate Trees
trees = 5*planet_size;
repeat(trees)
{
    var dir = irandom(360);
    var pX = x + lengthdir_x(planet_surface_radius,dir);
    var pY = y + lengthdir_y(planet_surface_radius,dir);
    with (instance_create(pX,pY,o_Trees))
    {
        direction = dir;
        current_planet = other.id;
        x = other.x + lengthdir_x(other.planet_surface_radius,dir);
        y = other.y + lengthdir_y(other.planet_surface_radius,dir);
        image_angle = point_direction(other.x,other.y,x,y)-90;
        depth = choose(1,0,-1);
    }
}

//Grass
planet_grass = round(planet_size*planet_size_mod*2*3.14/32);

//Simulate Life
life_dir = irandom(360);
life_moving = true;
life_timer = irandom(10)*room_speed;
life_move_left = choose(-1,1);
life_frame = 0;
life_frame_speed = 0.1;
life_x = x + lengthdir_x(planet_surface_radius,life_dir);
life_y = y + lengthdir_y(planet_surface_radius,life_dir);
life_angle = point_direction(life_x,life_y,x,y)+90;
