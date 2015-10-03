//argument0: current time
//argument1: starting value
//argument2: change in value
//argument3: duration of change

t = argument0; b = argument1; c = argument2; d = argument3;

if (t < 1)
    return c/2*t*t + b;
    
	t--;
return -c/2 * (t*(t-2) - 1) + b;