///Inventory_README
/*
    an inventory is a ds_map containing chests, the chests are keyed by name 
    the map also has a _UID to generate unique item ids
    and a fast reference map to get the item data by uid
    {
        "Chest1": {chest} where chest is 
             {
                {
                    content
                    {
                        NumItems, 
                        Item1, 
                        Item2, 
                        Item3,
                        ...
                        where item is
                        {
                           ItemName,
                           ItemUID,
                           ChestName,
                           ItemData {All,Your,Varius,Properties}
                        }
                        
                    }
                },
                ChestSizeLimit
             }
             
        "Chest2": Chest,
        "Chest3": Chest,
        "Chest4": Chest,
        "_UID": 0,
        "_UIDREF":
        {
            UID1: {Item} where as above item is
                  {
                      ItemName,
                      ItemUID,
                      ChestName,
                      ItemData {All,Your,Varius,Properties}
                  },   
            UID2: {item},   
            UID3: {item},   
            UID4: {item}   
        }
    }
*/
