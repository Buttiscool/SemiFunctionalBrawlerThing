///tmc_vec3_add_io(io_tmc_vec3,tmc_vec3)
/*
    add the 2 vectors together WITHOUT returning a new vector
    io_tmc_vec3 serves as both input and output parameter
    var io = tmc_vec3(10,10,10);
    tmc_vec3_add_io(io,tmc_vec3(10,10,10));
    io will be modified and contain the result
    the method is faster than generating a new vector
*/
argument0[@3] = argument0[3] + argument1[3];
argument0[@2] = argument0[2] + argument1[2];
argument0[@1] = argument0[1] + argument1[1];
