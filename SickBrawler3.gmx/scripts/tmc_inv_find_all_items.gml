///tmc_inv_find_all_items(inventory,itemName)
/*
    returns an array with the UID of all items found in the inventory matching the name
    where arr[0] is the number of items found and arr[1,2,3,n] are all the items UIDs
    arr[0] beeing the count, if 0 then none were found;
    arr[1,2,3,n] can be used with tmc_inv_get_item()
    example:
        var uids = tmc_inv_find_all_item(inventory,"Gold")
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
    itemName = argument1;
var arr;
arr[0] = 0;

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
            arr[@0] = arr[0]+1;
            arr[@arr[@0]] = val[ITEM.UID];
        }
        key = ds_map_find_next(fastmap,key);
    }
}
return arr;
