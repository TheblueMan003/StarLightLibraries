package utils.draw

import mc.pointer as p
import cmd.block as b

"""
Place a blocks from start to end in a line
"""
public lazy int line(mcposition start, mcposition end, mcobject block){
    void rec(){
        if (!@s[distance=..1]){
            b.set(block)
            /tp @s ^ ^ ^0.5
            at(@s){
                rec()
            }
        }
    }
    at(start){
        p.run(){
            facing(end){
                rec()
            }
        }
    }
}

"""
Run the action from start to end in a line
"""
public lazy int line(mcposition start, mcposition end, void=>void action){
    void rec(){
        if (!@s[distance=..1]){
            action()
            /tp @s ^ ^ ^0.5
            at(@s){
                rec()
            }
        }
    }
    at(start){
        p.run(){
            facing(end){
                rec()
            }
        }
    }
}