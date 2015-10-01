///tmc_inv_chest_limit_get(chest_index)
/*
    gets the limit of the chest_index
    
    this function can only fail if you passed a non chest_index as paramenter and Game Maker with tell you an invalid index or bad key is used
    
    
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

return argument0[CHEST.LIMIT];
