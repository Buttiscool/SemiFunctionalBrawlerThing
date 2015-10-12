///tmc_inv_add_chest(inventory,chest_name)
/*
    adds a chest to the inventory
    an inventory may have multiple chests like for chests (duh), wearables, weapons even a specific part of the body like a hand can be a chest with 1 item possible in it
    returns the added chest id for quick access
    
    a chest is a means to split the inventory into parts that makes sense to your game
    being held in an inventory main container allows multiple chests which gives the options to move things arround
    and allows seeing if the player is equipped looking at a specific chest or if he has an item in his possession looking at the inventory as a whole
    
    You cannot have chests of the same name in he inventory. if it is already added, the existing chest is returned
    
    the chest has unlimited space... well, 100000000 slots but you can set a limit with 
        tmc_inc_chest_limit_set()
        
   for example player create
       inventory = tmc_inv_create();
       chest = tmc_inv_add_chest(inventory,"chest");
       tmc_inv_chest_limit_set(chest,30);
       belt = tmc_inv_add_chest(inventory,"belt");
       tmc_inv_chest_limit_set(belt,5);
       wearing = tmc_inv_add_chest(inventory,"wearing");
       tmc_inv_chest_limit_set(wearing,5);
       lefthand = tmc_inv_add_chest(inventory,"lefthand");
       tmc_inv_chest_limit_set(lefthand,1);
   
   
*/

var m = tmc_inv_get_chest(argument0,argument1);
if(is_undefined(m))
{
    m = tmc_inv_to_array(tmc_inv_to_array(0),1000000);
    //m[@CHEST.CONTENT] = tmc_inv_to_array(0);
    //m[@CHEST.LIMIT] = 1000000;
    ds_map_add(argument0,argument1,m);
}
return m;
