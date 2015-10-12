///tmc_inv_get_item(inventory,UID)
/*
    returns the item struct based on the UID or undefined if not found
    from the item, you can get the item data, the name and the chest name
    
    see Item_README if the details onn how to use the item.
*/
var inventory = argument0,
    UID = argument1;

var fastmap = ds_map_find_value(inventory,"_UIDREF");
return ds_map_find_value(fastmap,UID);
