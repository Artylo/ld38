///Debug System
if(global.start)
{
    if(logo_alpha > 0) logo_alpha -= 1/room_speed;
}
if(logo_alpha > 0) draw_sprite_ext(s_Logo,0,0,0,1,1,0,c_white,logo_alpha);
if(keyboard_check_pressed(vk_anykey)) if(!global.start) global.start = true;


draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_colour(c_white);

debug[0] = "[DEBUG]";
debug[1] = "playerX: " + string(o_Player.x);
debug[2] = "playerY: " + string(o_Player.y);
debug[3] = "ppCam: " + string(global.pp_camera);
debug[4] = "Player2Mouse: " + string(point_distance(o_Player.x,o_Player.y,mouse_x,mouse_y));
debug[5] = "ViewAngle: " + string(view_angle);
debug[6] = "GrassNum: " + string(o_Planet.planet_grass);
debug[7] = "PlanetsNum: " + string(instance_number(o_Planet));

if(keyboard_check(vk_space))
{
    for(var i = 0; i < array_length_1d(debug); i++)
    {
        draw_text_outline(view_wview,16*i,debug[i],c_black,2);
    }
}
