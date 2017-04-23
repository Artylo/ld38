///Director Draw

//Draw Day and Night
draw_circle(o_Player.x,o_Player.y,128,true); // Orbit Circle

shader_set(shader_RGB);
draw_circle_colour(
o_Player.x+lengthdir_x(128,sun_direction),
o_Player.y+lengthdir_y(128,sun_direction),
sun_radius,sun_colour,sun_colour,false); // Dark Sun
shader_reset();
draw_circle(
o_Player.x+lengthdir_x(128,sun_direction),
o_Player.y+lengthdir_y(128,sun_direction),
sun_radius,true); // White Sun
