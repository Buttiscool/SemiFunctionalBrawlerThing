///tmc_segment(point1,point2)
//creates a line segment from point1 to point2
//point1 and point2 are tmc_vect2 or tmc_vect3
//they must be the same dimentions
var line;
//set [0] as being 2 or 3 if vector is 2d or 3d
//will tell if line is 2 d or 3 d
line[3] = 0; //extra data
line[2] = argument1;
line[1] = argument0;
line[0] = (argument0[0]==argument1[0]) * argument0[0]
return line;