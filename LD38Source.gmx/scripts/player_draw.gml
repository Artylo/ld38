///Draw Player
draw_set_colour(c_white);
draw_self();

//Draw Tool
if(mouse_check_button(mb_left))
{
    draw_sprite_ext(s_Tools,tool,tool_x,tool_y,tool_xscale,1,tool_dir,c_white,1);
}
