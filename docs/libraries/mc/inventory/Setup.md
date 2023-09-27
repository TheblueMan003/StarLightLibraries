# template Setup<>


## lazy function forceMainHand
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- void


Set the current entity's mainhand to `item` with `count`

## lazy function forceOffHand
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- void


Set the current entity's offhand to `item` with `count`

## lazy function forceHotbar
### Arguments:
- slotID (`int`)
- item (`mcobject`)
- count (`int`)
### Return:
- void


Set the current entity's hotbar slot `slotID` to `item` with `count`

## lazy function forceHotbar
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- void


Set the current entity's whole hotbar to `item` with `count`

## lazy function forceHotbarRange
### Arguments:
- min (`int`)
- max (`int`)
- item (`mcobject`)
- count (`int`)
### Return:
- void


Set the multiple slot int current entity's hotbar to `item` with `count`.    Slot goes from `min` to `max` both included.

## lazy function clearHotbar
### Arguments:

### Return:
- void


Clear the hotbar of the current entity

## lazy function forceInventorySlot
### Arguments:
- index (`int`)
- item (`mcobject`)
- count (`int`)
### Return:
- void


Set the inventory slot `index` of the current entity to `item` with `count`

## lazy function forceHelmet
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- void


Set the current entity's helmet to `item` with `count`

## lazy function forceChestplate
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- void


Set the current entity's chestplate to `item` with `count`

## lazy function forceLeggings
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- void


Set the current entity's leggings to `item` with `count`

## lazy function forceBoots
### Arguments:
- item (`mcobject`)
- count (`int`)
### Return:
- void


Set the current entity's boots to `item` with `count`

## [compile.order=9999] function handler
### Arguments:

### Return:
- void




## @inventory_setup.reload [compile.order=9999] function reload
### Arguments:

### Return:
- void




## function add
### Arguments:

### Return:
- void




## lazy function add
### Arguments:
- e (`entity`)
### Return:
- void




## lazy function remove
### Arguments:

### Return:
- void




## lazy function remove
### Arguments:
- e (`entity`)
### Return:
- void







