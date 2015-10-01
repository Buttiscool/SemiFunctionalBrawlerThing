///tmc_inv_del_item(inventory, UID)
/*
    removes an item from the inventory
    inventory is the inventory index
    UID is the item unique id
    
    returns true if found and removed, false if not.
    
*/
var inventory = argument0,
    UID = argument1;

var item = tmc_inv_get_item(inventory,UID);
if(!is_undefined(item))
{
    var chest = tmc_inv_get_chest(inventory,item[ITEM.CHESTNAME]);
    var content = chest[CHEST.CONTENT];
    var iend = content[CONTENT.COUNT];
    var j = 0;
    for(var i = 1; i <=iend; i++;)
    {
        var item = content[i];
        var item_name = item[ITEM.NAME];
        if(j)
        {
            content[@j] = content[i];
            content[@i] = 0;
            j++;
        }
        else
        {
            if(item[ITEM.UID] == UID)
            {
                j = i;
            }
        }
    }
    if(j)
    {
        content[@CONTENT.COUNT] = content[CONTENT.COUNT]-1;
        var fastmap = ds_map_find_value(inventory,"_UIDREF");
        ds_map_delete(fastmap,UID);
        return true;
    }
}
return false;
