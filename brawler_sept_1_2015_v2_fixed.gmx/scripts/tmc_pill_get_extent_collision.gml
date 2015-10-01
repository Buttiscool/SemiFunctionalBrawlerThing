///tmc_pill_get_extent_collision(tmc_pill,x,y)
//rerturns the bounding boxes of the sensor of the pill at x,y
var pill = argument0;
var xx = argument1;
var yy = argument2;
var x1,y1,x2,y2;
var segment = pill[0];
var point1 = segment[1];
var point2 = segment[2];
var r = pill[1]
    
    x1 = min(point1[1],point2[1]) -r +xx;
    x2 = max(point1[1],point2[1]) +r +xx;
    y1 = min(point1[2],point2[2]) -r +yy;
    y2 = max(point1[2],point2[2]) +r +yy;

return tmc_segment(tmc_vect2(x1,y1),tmc_vect2(x2,y2));
