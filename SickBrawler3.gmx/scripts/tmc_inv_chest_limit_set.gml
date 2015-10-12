///tmc_inv_chest_limit_set(chest_index, new_limit)
/*
    sets the limit of the chest_index
    
    this function can only fail if you passed a non chest_index as paramenter and Game Maker with tell you an invalid index or bad key is used
    
    
   for example player create
       var backpack = tmc_inv_get_chest(inventory,"backpack")
       if(backpack) tmc_inv_chest_limit_set(backpack,5);
       
   
*/

argument0[@CHEST.LIMIT] = argument1;
