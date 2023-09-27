## ` @playertick void player()`


## ` @playertick void player()`


## ` @tick [tag.order=-100] void room_detection_init()`
Room detection init

## ` @tick [tag.order=100] void room_detection_end()`
Room detection end

## `public @test.after void show()`
Show the list of active room

# template Room<_sx,_sy,_sz,_ex,_ey,_ez>
Template for a room that need to execute a function when a player enter it, stay in it, exit it, or when the room is activated or desactivated.Nested template are supported. The nested room only check if a player is in the parent room.

## ` lazy void init(int sx, int sy, int sz, int ex, int ey, int ez)`


## ` void setColor(Color? c)`
Set the color to display in creative

## ` virtual void onEnter()`
Call back when a player enter the room.

## ` virtual void onStay()`
Call back when a player stays in the room.

## ` virtual void onActivate()`
Call back when the room get activated. A player enter the room while nobody is in it.

## ` virtual void onDesactivate()`
Call back when the room get desactivated. All the players left the room.

## ` virtual void main()`
Call back when the room contains at least one player.

## ` virtual void onExit()`
Call back when a player exit the room.

## ` @game.room.show void __show__()`


## ` @game.room.init void main_init()`


## ` @game.room.end void main_end()`


## ` @templates.parent.room.tick [Compile.order=100] void __main_player__()`


## ` @room.count void __count__()`
Count the number of active room




