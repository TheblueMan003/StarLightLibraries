package game.parkour.spawnpoint

import cmd.title as title
import cmd.spawnpoint as spawnpoint
import cmd.gamemode as gm
import cmd.entity as entity
import cmd.tag as tag
import mc.java.nbt as nbt
import mc.pointer as pt
import standard

scoreboard int UUID
int uuid, guuid
entity markers

"""
Reset the spawnpoint
"""
void reset(){
    
}

private void mark(){
    guuid++
    UUID := guuid
    uuid = UUID
    with(markers,true,UUID==uuid){
        entity.kill()
    }
    markers += pt.newPointer(){
        UUID = uuid
    }
}

"""
Teleport the player to last checkpoint
"""
void respawn(){
    entity.kill()
}

"""
Set the spawnpoint
"""
bool setSpawn(bool silent = false){
    return setSpawn(0, 0, silent)
}

"""
Set the spawnpoint
"""
bool setSpawn(float sx, float sz, bool silent = false){
    lazy var sel = Compiler.mergeSelector(markers, @s[distance=..3])
    bool found = false
    with(sel,true,UUID==uuid){
        found = true
    }
    if (!found){
        mark()
        spawnpoint.set()
        if (!silent){
            /playsound random.levelup @s ~ ~ ~ 1
            /particle minecraft:totem_particle
        }
        return true
    }
    else{
        return false
    }
}

"""
Checkpoint for a block
"""
lazy void checkpoint(mcobject block, void=>void action){
    foreach(x in -1..1){
        foreach(z in -1..1){
            Compiler.insert($x,x){
                Compiler.insert($z,z){
                    if (block(~$x ~-1 ~$z, block)){
                        if (setSpawn(x, z)){
                            action()
                        }
                    }
                }
            }
        }
    }
}