/// Player Init

player_speed = 10;
player_surfaced = true;
player_landing = false;

player_sound_timer_max = room_speed/2;
player_sound_timer = player_sound_timer_max;

tool = 0;
tool_dir = 0;
tool_speed = 10;
tool_xscale = 1;
tool_dist = 30;
tool_x = 0;
tool_y = 0;
tool_dir_to_mouse = point_distance(x,y,mouse_x,mouse_y);
/*
*
* 0 - Axe
*
*/
