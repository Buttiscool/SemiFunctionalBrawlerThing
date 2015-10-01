///scr_draw_circle_part(x,y,radius,front_colour,back_colour,rotation,flip,startangle,endangle,alpha)
var script_x = argument0;//center x of circle
var script_y = argument1;//center y of circle
var script_radius = argument2;//radius of big circle
var script_frontcolor = argument3;//forground color
var script_backcolor = argument4;//background color
var script_rotation = argument5;//angle to rotate
var script_flip = argument6;//clockwise counterclockwise
var script_startangle = argument7+script_rotation;//beginning of circle
var script_endangle = argument8+script_rotation;//end of circle
var script_alpha = argument9;//alpha

var tempcolor = draw_get_colour();//to return to old color
var tempalpha = draw_get_alpha();//to return to old alpha

draw_set_alpha(script_alpha);

///draw back circle
draw_circle_colour(script_x,script_y,script_radius*0.75,script_backcolor,script_backcolor,0);

draw_set_colour(script_frontcolor);

///draw front circle
if script_endangle-script_startangle >0
{
    if script_flip = 1///reversed version
    {
        draw_primitive_begin(pr_trianglefan)
            draw_vertex(script_x,script_y)///center vertex
            for (var script_i=script_startangle; script_i<=script_endangle; script_i+=1)
            {
                draw_vertex(script_x+(script_radius*sin(degtorad(script_i))*-1),script_y+script_radius*cos(degtorad(script_i)));
            }
        draw_primitive_end()
    }
    else //normal version
    {
        draw_primitive_begin(pr_trianglefan)
            draw_vertex(script_x,script_y)///center vertex
            for (var script_i=script_startangle; script_i<=script_endangle; script_i+=1)
            {
                draw_vertex(script_x+script_radius*sin(degtorad(script_i)),script_y+script_radius*cos(degtorad(script_i)));
            }
        draw_primitive_end()
    }
}

draw_set_alpha(tempalpha)//return to old alpha
draw_set_colour(tempcolor)///Return to old color