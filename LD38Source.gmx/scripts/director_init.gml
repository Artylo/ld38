///Director Init
view_wport = global.gameWidth;
view_hport = global.gameHeight;
view_wview = global.gameWidth;
view_hview = global.gameHeight;
display_set_gui_size(global.gameWidth, global.gameHeight);
room_speed = 60;

//Day and Night
sun_rising = false;
sun_orbit_speed = 2/room_speed;
sun_speed = 1/room_speed;
sun_direction = 0;
sun_length = 100;
sun_alpha = 0;
sun_radius = 32;
sun_brightness = 0;
sun_colour = make_colour_rgb(0,0,0);
