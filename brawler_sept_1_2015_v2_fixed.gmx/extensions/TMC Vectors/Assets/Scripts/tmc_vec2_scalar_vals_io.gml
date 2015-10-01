///tmc_vec2_scalar_vals_io(io_tmc_vec2,x,y)
/*
    calculate the scalar between x,y and the vector WITHOUT returning a new vector
    io_tmc_vec2 serves as both input and output parameter
    var io = tmc_vec2(10,10,10);
    tmc_vec2_scalar_vals_io(io,10,30));
    io will be modified and contain the result
    the method is faster than generating a new vector
*/
argument0[@2] = argument2 - argument0[2];
argument0[@1] = argument1 - argument0[1];