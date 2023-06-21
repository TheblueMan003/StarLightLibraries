package game.AreaLevel

import cmd.entity as entity
import game.Room
import game.Level


template AreaLevel<sx, sy, sz, ex, ey, ez> extends Level{
    def lazy parentStart(){
        start()
    }
    def lazy parentStop(){
        stop()
    }
    def @templates.parent.room.tick __room_tick__(){
        @templates.room.tick()
    }
    Room room<sx, sy, sz, ex, ey, ez>{
        def onStart(){
            parentStart()
        }
        def onStop(){
            parentStop()
        }
    }
}