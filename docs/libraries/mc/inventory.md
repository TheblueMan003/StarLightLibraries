## lazy function setMainHand
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- void


Set the current entity's mainhand to `item` with `count`

## lazy function setMainHand
### Arguments:
- item (`mcobject`)
- count (`int`)
- nbt (`json`)
### Return:
- void


Set the current entity's mainhand to `item` with `count`

## lazy function setOffHand
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- void


Set the current entity's offhand to `item` with `count`

## lazy function setOffHand
### Arguments:
- item (`mcobject`)
- count (`int`)
- nbt (`json`)
### Return:
- void


Set the current entity's offhand to `item` with `count`

## lazy function setHotbar
### Arguments:
- slotID (`int`)
- item (`mcobject`)
- count (`int`)
### Return:
- void


Set the current entity's hotbar slot `slotID` to `item` with `count`

## lazy function setHotbar
### Arguments:
- slotID (`int`)
- item (`mcobject`)
- count (`int`)
- nbt (`json`)
### Return:
- void


Set the current entity's hotbar slot `slotID` to `item` with `count`

## lazy function setHotbar
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- void


Set the current entity's whole hotbar to `item` with `count`

## lazy function setHotbar
### Arguments:
- item (`mcobject`)
- count (`int`)
- nbt (`json`)
### Return:
- void


Set the current entity's whole hotbar to `item` with `count`

## lazy function setHotbarRange
### Arguments:
- min (`int`)
- max (`int`)
- item (`mcobject`)
- count (`int`)
### Return:
- void


Set the multiple slot int current entity's hotbar to `item` with `count`.    Slot goes from `min` to `max` both included.

## lazy function setHotbarRange
### Arguments:
- min (`int`)
- max (`int`)
- item (`mcobject`)
- count (`int`)
- nbt (`json`)
### Return:
- void


Set the multiple slot int current entity's hotbar to `item` with `count`.    Slot goes from `min` to `max` both included.

## lazy function clearHotbar
### Arguments:

### Return:
- void


Clear the hotbar of the current entity

## lazy function setInventorySlot
### Arguments:
- index (`int`)
- item (`mcobject`)
- count (`int`)
### Return:
- void


Set the inventory slot `index` of the current entity to `item` with `count`

## lazy function setInventorySlot
### Arguments:
- index (`int`)
- item (`mcobject`)
- count (`int`)
- nbt (`json`)
### Return:
- void


Set the inventory slot `index` of the current entity to `item` with `count`

## lazy function setHelmet
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- void


Set the current entity's helmet to `item` with `count`

## lazy function setHelmet
### Arguments:
- item (`mcobject`)
- count (`int`)
- nbt (`json`)
### Return:
- void


Set the current entity's helmet to `item` with `count`

## lazy function setChestplate
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- void


Set the current entity's chestplate to `item` with `count`

## lazy function setChestplate
### Arguments:
- item (`mcobject`)
- count (`int`)
- nbt (`json`)
### Return:
- void


Set the current entity's chestplate to `item` with `count`

## lazy function setLeggings
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- void


Set the current entity's leggings to `item` with `count`

## lazy function setLeggings
### Arguments:
- item (`mcobject`)
- count (`int`)
- nbt (`json`)
### Return:
- void


Set the current entity's leggings to `item` with `count`

## lazy function setBoots
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- void


Set the current entity's boots to `item` with `count`

## lazy function setBoots
### Arguments:
- item (`mcobject`)
- count (`int`)
- nbt (`json`)
### Return:
- void


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


## lazy function isHoldingItem
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- bool




## lazy function isHoldingItemOffhand
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- bool




## lazy function isHoldingItemHead
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- bool




## lazy function isHoldingItemChest
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- bool




## lazy function isHoldingItemLegs
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- bool




## lazy function isHoldingItemFeet
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- bool




## lazy function clear
### Arguments:

### Return:
- void


Clear the current entity's inventory

## lazy function clear
### Arguments:
- $item (`mcobject`)
### Return:
- void


Clear the current entity's inventory of `item`

## lazy function clear
### Arguments:
- $item (`mcobject`)
- $count (`int`)
### Return:
- void


Clear the current entity's inventory of `item` with `count`

## lazy [noReturnCheck=true,__returnCheck__=true] function clearCount
### Arguments:

### Return:
- int


Clear the current entity's inventory and return the number of items cleared

## lazy [noReturnCheck=true,__returnCheck__=true] function clearCount
### Arguments:
- item (`mcobject`)
### Return:
- int


Clear the current entity's inventory of `item` and return the number of items cleared

## lazy [noReturnCheck=true,__returnCheck__=true] function clearCount
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- int


Clear the current entity's inventory of `item` with a max of `count` and return the number of items cleared


