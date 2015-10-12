///tmc_inv_add_item(inventory, chestName, itemName, itemData)
/*
    adds an item to the chest in inventory
    inventory is the inventory index
    chestName is the chest to add the item into
    itemName is the identifier of the item
    itemData is a struct array. This is where you have the fexibility to have aninthing you want for an item description
    
    the function adds without merging. if there is already an item of this name in the inventory, then there will be 2
    
    if the limit is reached the item is not added and 0 is returned
    else the item Unique Id Number (for this new inventory item) is returned
    
    you must handle the case where the item is not added and drop the item back on the floor
    
    the Unique Id Number is used to locate the item safely and quickly
    
    example
        //add gun1 with 20 bullets, damage of 30, delay of 40
        tmc_inv_add_item(inventory, "BackPack", "Gun1", tmc_inv_to_array(20,30,40));
        //add 20 pieces of gold
        tmc_inv_add_item(inventory, "Wallet", "Gold", tmc_inv_to_array(20));
    
*/
var inventory = argument0,
    chest_name = argument1,
    itemName = argument2,
    itemData = argument3;

var chest = tmc_inv_get_chest(inventory,chest_name);

if(is_undefined(chest))  return 0;

var limit = chest[CHEST.LIMIT],
    content = chest[CHEST.CONTENT];

var content_count = content[CONTENT.COUNT];
    
if(content_count == limit) return 0;

///get uid and update it
var UID = ds_map_find_value(inventory,"_UID") + 1;
ds_map_replace(inventory,"_UID",UID);
//Add to chect content
content_count++;
content[@CONTENT.COUNT] = content_count;
var item = tmc_inv_to_array(itemName,UID,chest_name,itemData);
content[@content_count] = item;
//mirror in fast access map
var fastmap = ds_map_find_value(inventory,"_UIDREF");
ds_map_add(fastmap,UID,item);
return UID;
