///tmc_inv_find_all_items_in_chest(inventory,chestName,itemName)
/*
    returns an array with the UID of all items found in the inventory chest specified matching the name
    where arr[0] is the number of items found and arr[1,2,3,n] are all the items UIDs
    arr[0] beeing the count, if 0 then none were found;
    arr[1,2,3,n] can be used with tmc_inv_get_item()
    example:
        var uids = tmc_inv_find_all_item_in_chest(inventory,"Gold","Backpack")
        var iend = uids[0];
        var numgold = 0;
        for(var i = 1; i<=iend; i++)
        {
            var uid = uids[i];
            var item = tmc_inv_get_item(inventory,uid);
            var data = item[ITEM.DATA];
            numgold+=data[0]; //assuming the data[0] is the number of gold coins in each inventory item of type Gold
        }
    
*/
var inventory = argument0,
    itemName = argument2;
    chestName = argument1;
var arr;
arr[0] = 0;
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
            arr[@0] = arr[0]+1;
            arr[@arr[0]] = item[ITEM.UID];
        }
    }
}
return arr;
