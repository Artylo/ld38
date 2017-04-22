image_angle = point_direction(x,y,current_planet.x,current_planet.y)+90;

//Player Position
x = current_planet.x + lengthdir_x(current_planet.planet_surface_radius,direction);
y = current_planet.y + lengthdir_y(current_planet.planet_surface_radius,direction);
