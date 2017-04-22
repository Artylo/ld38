///Debug System

draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_colour(c_white);

debug[0] = "[DEBUG]";
debug[1] = "playerX: " + string(o_Player.x);
debug[2] = "playerY: " + string(o_Player.y);
debug[3] = "ppCam: " + string(global.pp_camera);

if(keyboard_check(vk_space))
{
    for(var i = 0; i < array_length_1d(debug); i++)
    {
        draw_text(view_wview,16*i,debug[i]);
    }
}