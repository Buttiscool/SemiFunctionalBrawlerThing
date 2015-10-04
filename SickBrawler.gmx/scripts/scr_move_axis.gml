//scr_move_axis(xaxis,yaxis,magnitude,spd)

var xaxis = argument0;
var yaxis = argument1;
var threshold = argument2;
var magnitude = point_distance(0, 0, xaxis, yaxis);
var spd = argument3;
var sprint = argument4;

// Move the character if possible

if (magnitude >= threshold)
{
        phy_position_x+=xaxis*spd*sprint;
        phy_position_y+=yaxis*spd*sprint;
}
    
