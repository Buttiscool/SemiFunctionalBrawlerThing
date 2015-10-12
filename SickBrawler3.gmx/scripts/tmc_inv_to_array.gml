///tmc_inv_to_array(elements)
//creates and returns an array from arguments
/* makes it easy to define and create structs
    var struct = tmc_inv_to_array{1,2,3,4}
    struct will hold {1,2,3,4}
*/
var r;
for (var i = argument_count-1; i>-1; i--)
{
    r[i] = argument[i];
}
return r;
