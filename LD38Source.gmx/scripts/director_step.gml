///Director Step

//Camera

if(global.pp_camera)
{
    //if(window_get_height() != global.gameHeight*global.zoom)
    //and window_get_width() != global.gameWidth*global.zoom
    //and !window_get_fullscreen()
    //{
        window_set_size(global.gameWidth*global.zoom,global.gameHeight*global.zoom);
        surface_resize(application_surface,global.gameWidth,global.gameHeight);
        display_reset(0,false);
        global.pp_camera = false;
        
    //}
}
if(keyboard_check_pressed(ord('P')) and keyboard_check(vk_space))
{
    if(global.pp_camera) global.pp_camera = false;
    else global.pp_camera = true;
}
if(keyboard_check_pressed(ord('R')) and keyboard_check(vk_space))
{
    game_restart();
}

view_xview = o_Player.x - view_wview/2;
view_yview = o_Player.y - view_hview/2;
view_angle = -o_Player.direction+90;