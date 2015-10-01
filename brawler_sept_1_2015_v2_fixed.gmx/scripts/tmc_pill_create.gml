///tmc_pill_create(x1,y1,x2,y2,collision_radius,sensor_radius)
var pill;
pill[0] = tmc_segment(tmc_vect2(argument0,argument1),tmc_vect2(argument2,argument3))
pill[1] = argument4;
pill[2] = argument5;
return pill;
