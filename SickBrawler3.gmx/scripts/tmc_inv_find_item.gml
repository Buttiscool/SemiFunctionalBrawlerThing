///tmc_inv_find_item(inventory,itemName)
/*
    returns the UID of the first item found in the inventory matching the name
    return 0 if not found
    
    return value can be used with tmc_inv_get_item()
*/
var inventory = argument0,
    itemName = argument1;

var fastmap = ds_map_find_value(inventory,"_UIDREF");
var ct =ds_map_size(fastmap);
if(ct)
{
    var key = ds_map_find_first(fastmap);
    var val;
    repeat(ct)
    {
        val = ds_map_find_value(fastmap,key);
        if(val[ITEM.NAME] == itemName)
        {
            return val[ITEM.UID];
        }
        key = ds_map_find_next(fastmap,key);
    }
}
return 0;
