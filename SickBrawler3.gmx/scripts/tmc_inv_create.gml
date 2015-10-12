///tmc_inv_create()
/*
   returns an inventory
   for example player create
       inventory = tmc_inv_create();
       chest = tmc_inv_add_chest(inventory,"chest");
       belt = tmc_inv_add_chest(inventory,"belt");
       wearing = tmc_inv_add_chest(inventory,"wearing");
   seller create
       inventory = tmc_inv_create();
       deals = tmc_inv_add_chest(inventory,"deals");
       returned = tmc_inv_add_chest(inventory,"returned");
       wearables = tmc_inv_add_chest(inventory,"wearables");
       weapons = tmc_inv_add_chest(inventory,"weapons");
       jewelry = tmc_inv_add_chest(inventory,"jewelry");
*/

var m = ds_map_create();
ds_map_add(m,"_UID",0); //unique id counter for items
var uidm = ds_map_create()
ds_map_add_map(m,"_UIDREF",uidm); //fast item reference based on UID
return m;
