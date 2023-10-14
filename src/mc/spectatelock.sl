package mc.SpectateLock

import utils.CProcess
import cmd.spectate as spectate
import mc.java.display.DisplayItem

class Camera extends DisplayItem{
    def this(){
        setTeleportDuration(0)
    }
}
template SpectateLock<position=~~~, rotation_x=0, rotation_y=0> extends CProcess{
    scoreboard Camera camera
    def main(){
        spectate.spectate(camera)
    }
    def onJoin(){
        camera.run{
            Compiler.insert(($rx, $ry), (rotation_x, rotation_y)){
                at(position)./tp @s ~ ~ ~ $rx $ry
            }
        }
    }
    def onLeave(){
        camera.run{
            /kill
        }
    }
}