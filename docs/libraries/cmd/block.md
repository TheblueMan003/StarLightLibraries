## lazy function set
### Arguments:
- position (`mcposition`)
- block (`mcobject`)
### Return:
- void


Set a `block` at `position`

## lazy function set
### Arguments:
- block (`mcobject`)
### Return:
- void


Set a `block` here

## lazy function fill
### Arguments:
- start (`mcposition`)
- end (`mcposition`)
- block (`mcobject`)
### Return:
- void


Fill from `start` to `end` with `block`

## lazy function replace
### Arguments:
- start (`mcposition`)
- end (`mcposition`)
- block (`mcobject`)
- fro (`mcobject`)
### Return:
- void


Replace `fro` to `block` from `start` to `end`

## lazy function replaceNear
### Arguments:
- $radius (`int`)
- from_ (`mcobject`)
- to_ (`mcobject`)
### Return:
- void


Replace `from_` to `to_` in a radius.

## lazy function fillDestroy
### Arguments:
- start (`mcposition`)
- end (`mcposition`)
- block (`mcobject`)
### Return:
- void


Fill and Destroy from `start` to `end` with `block`

## lazy function fillHollow
### Arguments:
- start (`mcposition`)
- end (`mcposition`)
- block (`mcobject`)
### Return:
- void


Hollow Fill from `start` to `end` with `block`

## lazy function fillKeep
### Arguments:
- start (`mcposition`)
- end (`mcposition`)
- block (`mcobject`)
### Return:
- void


Fill Keep from `start` to `end` with `block`

## lazy function fillOutline
### Arguments:
- start (`mcposition`)
- end (`mcposition`)
- block (`mcobject`)
### Return:
- void


Fill Outline from `start` to `end` with `block`

## lazy function clone
### Arguments:
- start (`mcposition`)
- end (`mcposition`)
- target (`mcposition`)
### Return:
- void


Clone Area from `start` to `end`, to new area `target`

## lazy function cloneMask
### Arguments:
- start (`mcposition`)
- end (`mcposition`)
- target (`mcposition`)
### Return:
- void


Mask Clone Area from `start` to `end`, to new area `target`

## lazy function clone
### Arguments:
- start (`mcposition`)
- end (`mcposition`)
- target (`mcposition`)
- block (`mcobject`)
### Return:
- void


Clone Filtered by `block` in Area from `start` to `end`, to new area `target`

## lazy function move
### Arguments:
- start (`mcposition`)
- end (`mcposition`)
- target (`mcposition`)
### Return:
- void


Move Area from `start` to `end`, to new area `target`

## lazy function moveMask
### Arguments:
- start (`mcposition`)
- end (`mcposition`)
- target (`mcposition`)
### Return:
- void


Mask Move Area from `start` to `end`, to new area `target`

## lazy function move
### Arguments:
- start (`mcposition`)
- end (`mcposition`)
- target (`mcposition`)
- block (`mcobject`)
### Return:
- void


Move Filtered by `block` in Area from `start` to `end`, to new area `target`


