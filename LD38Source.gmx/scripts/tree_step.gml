if(!instance_exists(current_planet))
{
    instance_destroy();
}
else
{
    x = current_planet.x + lengthdir_x(current_planet.planet_surface_radius,direction);
    y = current_planet.y + lengthdir_y(current_planet.planet_surface_radius,direction);
}
