///tmc_vec3_mult_vals(tmc_vec3,x,y,z)
/*
    multplies x,y,z with the vector returning a new vector
    var v = tmc_vec3_mult_vals(tmc_vec3(10,10,10),5,10,15);
*/
var v;
v[3] = argument0[3] * argument3;
v[2] = argument0[2] * argument2;
v[1] = argument0[1] * argument1;
v[0] = argument0[0];
return v;
