///tmc_vect_addr(vect, real)
//add to each component of vect the value specified

var i;
var v1 = argument0;
var r = argument1;
var v;

var num = v1[0];
v[0] = num;
for(i=1; i<= num; i++)
{
    v[i] = v1[i]+r;
}
return v;
