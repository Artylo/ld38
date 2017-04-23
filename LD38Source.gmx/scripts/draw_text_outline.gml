///draw_text_outline(x, y, text, color, thickness);

var x1 = argument[0],
  y1 = argument[1],
  text = argument[2];
  c1 = c_black;
  thickness = argument[4];

var c2 = draw_get_colour();

if (argument_count >= 4)
{
  c1 = argument[3];
}

draw_set_color(c1);

draw_text(x1 - thickness, y1 - thickness, text);
draw_text(x1, y1 - thickness, text);
draw_text(x1 + thickness, y1 - thickness, text);
draw_text(x1 - thickness, y1, text);
draw_text(x1 + thickness, y1, text);
draw_text(x1 - thickness, y1 + thickness, text);
draw_text(x1, y1 + thickness, text);
draw_text(x1 + thickness, y1 + thickness, text);

draw_set_color(c2);

draw_text(x1, y1, text);
