package mc.PositionLock

import utils.CProcess
import cmd.inputperssion as ip

template PositionLock<position>{
    entity selected
    CProcess inner{
        def main(){
            with(@a in selected){
                at(position)as(@s[distance=0.1..,gamemode=!creative]){
                    /tp @s ~ ~ ~
                    if (Compiler.isBedrock()){
                        ip.movement(false)
                    }
                }
            }
        }
    }
    def start(){
        inner.start()
        selected += @s
        if (Compiler.isBedrock()){
            ip.movement(false)
        }
    }
    def stop(){
        inner.stop()
        selected -= @s
        if (Compiler.isBedrock()){
            ip.movement(true)
        }
    }
}