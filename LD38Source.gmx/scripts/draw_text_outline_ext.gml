///draw_text_outline_ext(x, y, text, color, thickness,xscale,yscale,angle);

var x1 = argument[0],
y1 = argument[1],
text = argument[2];
c1 = c_black;
thickness = argument[4];
var xs = argument[5],ys = argument[6],ang = argument[7];

var c2 = draw_get_colour();

if (argument_count >= 4)
{
  c1 = argument[3];
}

draw_set_color(c1);

draw_text_transformed(x1 - thickness, y1 - thickness, text,xs,ys,ang);
draw_text_transformed(x1, y1 - thickness, text,xs,ys,ang);
draw_text_transformed(x1 + thickness, y1 - thickness, text,xs,ys,ang);
draw_text_transformed(x1 - thickness, y1, text,xs,ys,ang);
draw_text_transformed(x1 + thickness, y1, text,xs,ys,ang);
draw_text_transformed(x1 - thickness, y1 + thickness, text,xs,ys,ang);
draw_text_transformed(x1, y1 + thickness, text,xs,ys,ang);
draw_text_transformed(x1 + thickness, y1 + thickness, text,xs,ys,ang);

draw_set_color(c2);

draw_text_transformed(x1, y1, text,xs,ys,ang);
