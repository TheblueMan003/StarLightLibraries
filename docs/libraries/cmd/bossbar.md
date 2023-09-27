## lazy function create
### Arguments:
- $name (`mcobject`)
- $display (`rawjson`)
### Return:
- void


Create a bossbar with `name` and text `display`

## lazy function delete
### Arguments:
- $name (`mcobject`)
### Return:
- void


Delete the bossbar with `name`

## lazy function setColor
### Arguments:
- $name (`mcobject`)
- $color (`mcobject`)
### Return:
- void


Set the color of bossbar `name` to `color`

## lazy function setMax
### Arguments:
- $name (`mcobject`)
- $value (`int`)
### Return:
- void


Set the max of bossbar `name` to `value`

## lazy function setValue
### Arguments:
- $name (`mcobject`)
- $value (`int`)
### Return:
- void


Set the value of bossbar `name` to `value`

## lazy function setValueVar
### Arguments:
- $name (`mcobject`)
- value (`int`)
### Return:
- void


Set the value of bossbar `name` to the variable `value`

## lazy function setMaxVar
### Arguments:
- $name (`mcobject`)
- value (`int`)
### Return:
- void


Set the max of bossbar `name` to variable `value`

## lazy function setName
### Arguments:
- $name (`mcobject`)
- $value (`rawjson`)
### Return:
- void


Set the text of bossbar `name` to `value`

## lazy function setVisible
### Arguments:
- $name (`mcobject`)
- $value (`int`)
### Return:
- void


Set the visibility of bossbar `name` to `value`

## lazy function show
### Arguments:
- $name (`mcobject`)
### Return:
- void


Set the visibility of bossbar `name` to true

## lazy function showEveryone
### Arguments:
- $name (`mcobject`)
### Return:
- void


Show the bossbar `name` to every player

## lazy function showPlayer
### Arguments:
- $name (`mcobject`)
- $player (`entity`)
### Return:
- void


Show the bossbar `name` to `player`

## lazy function hide
### Arguments:
- $name (`mcobject`)
### Return:
- void


Hide the bossbar `name`

## lazy function setPlayer
### Arguments:
- $name (`mcobject`)
- $player (`entity`)
### Return:
- void


Set the bossbar `name` player to `player`

## lazy function setNotched10
### Arguments:
- $name (`mcobject`)
### Return:
- void


Set the bossbar `name` style to be notched_10

## lazy function setNotched12
### Arguments:
- $name (`mcobject`)
### Return:
- void


Set the bossbar `name` style to be notched_12

## lazy function setNotched20
### Arguments:
- $name (`mcobject`)
### Return:
- void


Set the bossbar `name` style to be notched_20

## lazy function setNotched6
### Arguments:
- $name (`mcobject`)
### Return:
- void


Set the bossbar `name` style to be notched_6

## lazy function setNotched0
### Arguments:
- $name (`mcobject`)
### Return:
- void


Set the bossbar `name` style to be notched_0

# struct Bossbar


## lazy function __init__
### Arguments:
- value (`rawjson`)
### Return:
- void


Create a bossbar with text `display`

## lazy function delete
### Arguments:

### Return:
- void


Delete the bossbar

## lazy function setColor
### Arguments:
- value (`int`)
### Return:
- void


Set the color of bossbar `color`

## lazy function setMax
### Arguments:
- value (`int`)
### Return:
- void


Set the max of bossbar to `value`

## lazy function setValue
### Arguments:
- value (`int`)
### Return:
- void


Set the value of bossbar to `value`

## lazy function setValue
### Arguments:
- value (`int`)
- max (`int`)
### Return:
- void


Set the value & max of bossbar to `value` & `max`

## lazy function setName
### Arguments:
- value (`rawjson`)
### Return:
- void


Set the text of bossbar `name` to `value`

## lazy function setVisible
### Arguments:
- value (`bool`)
### Return:
- void


Set the visibility of bossbar to `value`

## lazy function show
### Arguments:

### Return:
- void


Set the visibility of bossbar to true

## lazy function showEveryone
### Arguments:

### Return:
- void


Show the bossbar to every player

## lazy function showPlayer
### Arguments:
- player (`entity`)
### Return:
- void


Show the bossbar `player`

## lazy function hide
### Arguments:

### Return:
- void


Hide the bossbar

## lazy function setPlayer
### Arguments:
- player (`entity`)
### Return:
- void


Set the bossbar player to `player`

## lazy function setNotched10
### Arguments:

### Return:
- void


Set the bossbar style to be notched_10

## lazy function setNotched12
### Arguments:

### Return:
- void


Set the bossbar style to be notched_12

## lazy function setNotched20
### Arguments:

### Return:
- void


Set the bossbar style to be notched_20

## lazy function setNotched6
### Arguments:

### Return:
- void


Set the bossbar style to be notched_6

## lazy function setNotched0
### Arguments:

### Return:
- void


Set the bossbar style to be notched_0

## @bossbar.shadow function shadow
### Arguments:

### Return:
- void


Hide all the bossbar

## @bossbar.unshadow function unshadow
### Arguments:

### Return:
- void


Unhide all the bossbar




