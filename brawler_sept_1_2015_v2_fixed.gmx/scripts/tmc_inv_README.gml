
/*
This inventory can be as simple or as complex as you want it to be

This system does not provide a canned solution you will find everywhere. It is a set of APIs which leaves you in charge of the more complex systems like drawing, showing an interface for buying items from a vendor, showing an interface for using items in game, deciding when an item is dropped and so on.  I don't even so far as defining what an item consists of... forcing you to abide by any of my per-conceive ideas of what an inventory item looks like or it's set of properties..

Though the example provided shows such concept, the interface is in no way tied to the inventory system per se. I know such system would likely be incompatible with your game and so you will likely have to implement your own in game interactions. so listen up yo.

Inventory:
An inventory is a container, either global or instance based that hold every items in the character's possession. Or any item a seller wants to sell, or the content of a treasure chest, or any item in the game coffers... 

You can have as many inventories in the game as you wish, you are in charge of remembering the inventory id as you would a ds_map. So you can have one global inventory or a thousand. It's up to you.

An inventory holds one to many chests (your stock categorized)

Chests:
A chest is an inventory section... a shelf, a spot in the warehouse. It is a means to categorize or split the inventory into sub parts that are useful to you in your game. A chest has a name and contains inventory items. A chest can be a anything from an actual chest, to a belt, a backpack, even a body part on an equip-able player. So an inventory has a multitude of chests to store stuff in. The term chest; well sorry if it's confusing, it's the only thing that made sense to me at the time. Having multiple chests in an inventory allows looking through the entire inventory or into a specific chest to find items in possession or items equipped.

Inventory1->Chest1 (Backpack)
Inventory1->Chest2 (Belt)
Inventory1->Chest3 (Clothes)
Inventory1->Chest4 (LeftHand)
Inventory1->Chest4 (RightHand)
Inventory2->Chest1 (Vendor Stock)

Items:
Here is where you have to pay close attention folks. I dont define what an inventory item looks like. That is up to you.

An item has a name and it's data (of your design) and is stored in a chest slot. The data is up to you to determine. The only thing I enforce is it needs a name and data to store, such data can be a string, a value or an array. I have provided an array helper so you can store a structure of values of your design, there is nothing hard coded in the system other than the requirement for an item name and its data.

For example. If you want to store a gun in the inventory that has a specific shooting rate, a specific clip size,  doing specific damage, you would add it to the chest like so, using my array helper
add to chest ”Gun1”,{shoot_rate,clip_sz, dmg_val}

drawing items:
You draw the items. Its your game! You can stuff information in your structure to describe how an items looks when drawing it

Interacting with items
You define how to interact with the item. I have a set of APIs to give you the item data, which you can manipulate directly via accessors [@ 0.....n] to modify content. 

I have APIs to add, remove, change inventory items. I dont not assume what to do with an item when it's bullet count, like for that gun example, reaches 0. You have to decide when an item needs to be removed from the inventory, or if an item, like coins needs to stack in one slot.


It's all up to you. Have fun!
*/
