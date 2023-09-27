## ` lazy void setMainHand(mcobject item, int count)`
Set the current entity's mainhand to `item` with `count`

## ` lazy void setMainHand(mcobject item, int count, json nbt)`
Set the current entity's mainhand to `item` with `count`

## ` lazy void setOffHand(mcobject item, int count)`
Set the current entity's offhand to `item` with `count`

## ` lazy void setOffHand(mcobject item, int count, json nbt)`
Set the current entity's offhand to `item` with `count`

## ` lazy void setHotbar(int slotID, mcobject item, int count)`
Set the current entity's hotbar slot `slotID` to `item` with `count`

## ` lazy void setHotbar(int slotID, mcobject item, int count, json nbt)`
Set the current entity's hotbar slot `slotID` to `item` with `count`

## ` lazy void setHotbar(mcobject item, int count)`
Set the current entity's whole hotbar to `item` with `count`

## ` lazy void setHotbar(mcobject item, int count, json nbt)`
Set the current entity's whole hotbar to `item` with `count`

## ` lazy void setHotbarRange(int min, int max, mcobject item, int count)`
Set the multiple slot int current entity's hotbar to `item` with `count`.    Slot goes from `min` to `max` both included.

## ` lazy void setHotbarRange(int min, int max, mcobject item, int count, json nbt)`
Set the multiple slot int current entity's hotbar to `item` with `count`.    Slot goes from `min` to `max` both included.

## ` lazy void clearHotbar()`
Clear the hotbar of the current entity

## ` lazy void setInventorySlot(int index, mcobject item, int count)`
Set the inventory slot `index` of the current entity to `item` with `count`

## ` lazy void setInventorySlot(int index, mcobject item, int count, json nbt)`
Set the inventory slot `index` of the current entity to `item` with `count`

## ` lazy void setHelmet(mcobject item, int count)`
Set the current entity's helmet to `item` with `count`

## ` lazy void setHelmet(mcobject item, int count, json nbt)`
Set the current entity's helmet to `item` with `count`

## ` lazy void setChestplate(mcobject item, int count)`
Set the current entity's chestplate to `item` with `count`

## ` lazy void setChestplate(mcobject item, int count, json nbt)`
Set the current entity's chestplate to `item` with `count`

## ` lazy void setLeggings(mcobject item, int count)`
Set the current entity's leggings to `item` with `count`

## ` lazy void setLeggings(mcobject item, int count, json nbt)`
Set the current entity's leggings to `item` with `count`

## ` lazy void setBoots(mcobject item, int count)`
Set the current entity's boots to `item` with `count`

## ` lazy void setBoots(mcobject item, int count, json nbt)`
Set the current entity's boots to `item` with `count`

## predicate isHoldingItem


## predicate isHoldingItem


## predicate isHoldingItem


## predicate isHoldingItemHead


## predicate isHoldingItemHead


## predicate isHoldingItemChest


## predicate isHoldingItemChest


## predicate isHoldingItemLegs


## predicate isHoldingItemLegs


## predicate isHoldingItemFeet


## predicate isHoldingItemFeet


## predicate isHoldingItemOffhand


## predicate isHoldingItemOffhand


## ` lazy bool isHoldingItem(mcobject item, int count)`


## ` lazy bool isHoldingItemOffhand(mcobject item, int count)`


## ` lazy bool isHoldingItemHead(mcobject item, int count)`


## ` lazy bool isHoldingItemChest(mcobject item, int count)`


## ` lazy bool isHoldingItemLegs(mcobject item, int count)`


## ` lazy bool isHoldingItemFeet(mcobject item, int count)`


## ` lazy void clear()`
Clear the current entity's inventory

## ` lazy void clear(mcobject $item)`
Clear the current entity's inventory of `item`

## ` lazy void clear(mcobject $item, int $count)`
Clear the current entity's inventory of `item` with `count`

## ` lazy [noReturnCheck=true,__returnCheck__=true] int clearCount()`
Clear the current entity's inventory and return the number of items cleared

## ` lazy [noReturnCheck=true,__returnCheck__=true] int clearCount(mcobject item)`
Clear the current entity's inventory of `item` and return the number of items cleared

## ` lazy [noReturnCheck=true,__returnCheck__=true] int clearCount(mcobject item, int count)`
Clear the current entity's inventory of `item` with a max of `count` and return the number of items cleared


