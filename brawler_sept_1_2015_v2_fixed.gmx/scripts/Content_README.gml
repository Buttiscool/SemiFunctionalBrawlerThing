///Content_README
/*
    Content is an array where arr[0] or arr[CONTENT.COUNT] is the content count 
    arr[1,2,3,4,5,n] is the content, the inventory items.
    
    looping throught the content
    
    var chest = tmc_inv_get_chest(inventory,"backpack");
    if(!is_undefined(chest))
    {
        var content = tmc_inv_chest_content_get(chest);
        var iend = content[CONTENT.COUNT];
        for(var i = 1; i<=iend; i++)
        {
            var item = content[i];
            var item_name = item[ITEM.NAME];
            var item_UID = item[ITEM.UID];
            var item_chest_name = item[ITEM.CHESTNAME];
            var item_data = item[ITEM.DATA];
            //do something with item
        }
    }
*/
