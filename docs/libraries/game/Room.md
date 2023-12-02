## @playertick function player
### Arguments:

### Return:
- void




## @playertick function player
### Arguments:

### Return:
- void




## @tick [tag.order=-100] function room_detection_init
### Arguments:

### Return:
- void


Room detection init

## @tick [tag.order=100] function room_detection_end
### Arguments:

### Return:
- void


Room detection end

## public @test.after function show
### Arguments:

### Return:
- void


Show the list of active room

# template Room<_sx,_sy,_sz,_ex,_ey,_ez>
Template for a room that need to execute a function when a player enter it, stay in it, exit it, or when the room is activated or desactivated.Nested template are supported. The nested room only check if a player is in the parent room.

## lazy function init
### Arguments:
- sx (`int`)
- sy (`int`)
- sz (`int`)
- ex (`int`)
- ey (`int`)
- ez (`int`)
### Return:
- void




## function setColor
### Arguments:
- c (`Color?`)
### Return:
- void


Set the color to display in creative

## virtual function onEnter
### Arguments:

### Return:
- void


Call back when a player enter the room.

## virtual function onStay
### Arguments:

### Return:
- void


Call back when a player stays in the room.

## virtual function onActivate
### Arguments:

### Return:
- void


Call back when the room get activated. A player enter the room while nobody is in it.

## virtual function onDesactivate
### Arguments:

### Return:
- void


Call back when the room get desactivated. All the players left the room.

## virtual function main
### Arguments:

### Return:
- void


Call back when the room contains at least one player.

## virtual function onExit
### Arguments:

### Return:
- void


Call back when a player exit the room.

## @game.room.show function __show__
### Arguments:

### Return:
- void




## @game.room.init function main_init
### Arguments:

### Return:
- void




## @game.room.end function main_end
### Arguments:

### Return:
- void




## @templates.parent.room.tick [Compile.order=100] function __main_player__
### Arguments:

### Return:
- void




## @room.count function __count__
### Arguments:

### Return:
- void


Count the number of active room




