package game.AreaLevel

import cmd.entity as entity
import game.Room
import game.Level

"""
Level + Room
"""
template AreaLevel<sx, sy, sz, ex, ey, ez> extends Level{
    def @templates.parent.room.tick __room_tick__(){
        @templates.room.tick()
    }
    Room<sx, sy, sz, ex, ey, ez> room{
        def onStart(){
            super.start()
        }
        def onStop(){
            super.stop()
        }
    }
}