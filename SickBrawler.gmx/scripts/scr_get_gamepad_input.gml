///scr_get_gamepad_input(device)

var device = argument0;

gamepad_set_axis_deadzone(device, .35);
xaxis = gamepad_axis_value(device, gp_axislh); //returns (-1, 1)
yaxis = gamepad_axis_value(device, gp_axislv); //returns (-1, 1)
magnitude = point_distance(0, 0, xaxis, yaxis);

if (magnitude > 1) magnitude = 1;
