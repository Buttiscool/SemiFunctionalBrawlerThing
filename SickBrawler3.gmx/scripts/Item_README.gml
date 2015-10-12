///Item_README
/*
    an item is the inventory Item stored as an entry in the content[] of a chest
    
    an item is a structure in the form of an array where
    arr[0] or arr[ITEM.NAME] is the item name
    arr[1] or arr[ITEM.UID] is the unique identification number for the item in the inventory system
    arr[2] or arr[ITEM.CHESTNAME] is the chest name where the item is located, for back referencing
    arr[3] or arr[ITEM.DATA] is the item structure (you define what the the structure is)
    
    functions that return item structure
       var UID = tmc_inv_find_first_item(inventory,"Gun1");
       has_item = 0;
       if(UID!=0)
       {
            has_item = 1;
            item = tmc_inv_get_item(inventory,UID);
            item_name = item[ITEM.NAME];
            item_UID = item[ITEM.UID];
            item_chest = item[ITEM.CHEST];
            item_data = item[ITEM.DATA];
       }
       
    you can store the item structure array or it's ITEM.DATA element which is also an array in your game independaly
    
    for example if you switch to a gun you can store the gun properties (the struct array) in your instance and change the values of the properties, 
    as long as you use the @ accessor to change the value
    
    for example, say the ammo is at element 0 of the data structure
    data = item[ITEM.DATA];
    data[@0] = data[0]-1;
    this will change the value in the structure so all things that have a reference to the data know the value is changed
*/
