///tmc_inv_find_item_in_chest(inventory,chestName,itemName)
/*
    returns the UID of the first item found in the inventory chest matching the name
    this is useful to find if an item is in a specific chest, like wearing a ring on the hand chest
    return 0 if not found
    
    return value can be used with tmc_inv_get_item()
    
*/
var inventory = argument0,
    itemName = argument2;
    chestName = argument1;

var chest = tmc_inv_get_chest(inventory,chestName);
if(!is_undefined(chest))
{
    var content = tmc_inv_chest_content_get(chest);
    var iend = content[CONTENT.COUNT];
    for(var i = 1; i<=iend; i++)
    {
        var item = content[i];
        if(item[ITEM.NAME] == itemName) 
        {
            return item[ITEM.UID];
        }
    }
}
return 0;
