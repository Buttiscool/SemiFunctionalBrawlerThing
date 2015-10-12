///tmc_inv_get_chest(inventory,chest_name)
/*
    Gets the chest from an inventory. if the chest does not exist. undefined is returned
    
    var backpack = tmc_inv_get_chest(inventory,"backpack")
    if(!is_undefined(backpack)) tmc_inv_chest_limit_set(backpack,5);
    
    returns undefined on fail
    
*/

if(ds_map_exists(argument0,argument1))
{
    return ds_map_find_value(argument0,argument1);
}
return undefined;
