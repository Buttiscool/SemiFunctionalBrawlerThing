///tmc_vec3_scalar_vals_io(io_tmc_vec3,x,y,z)
/*
    calculate the scalar between x,y,z and the vector WITHOUT returning a new vector
    io_tmc_vec3 serves as both input and output parameter
    var io = tmc_vec3(10,10,10);
    tmc_vec3_scalar_vals_io(io,10,30,40));
    io will be modified and contain the result
    the method is faster than generating a new vector
*/
argument0[@3] = argument3 - argument0[3];
argument0[@2] = argument2 - argument0[2];
argument0[@1] = argument1 - argument0[1];
