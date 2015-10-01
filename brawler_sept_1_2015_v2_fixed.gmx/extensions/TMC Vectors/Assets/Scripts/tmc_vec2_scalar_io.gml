///tmc_vec2_scalar_io(io_tmc_vec2,tmc_vec2)
/*
    Calculates the scalar of the 2 vectors WITHOUT returning a new vector
    io_tmc_vec2 serves as both input and output parameter
    var io = tmc_vec2(10,10);
    tmc_vec2_scalar_io(io,tmc_vec2(10,10));
    io will be modified and contain the result
    the method is faster than generating a new vector
*/
argument0[@2] = argument1[2] - argument0[2];
argument0[@1] = argument1[1] - argument0[1];