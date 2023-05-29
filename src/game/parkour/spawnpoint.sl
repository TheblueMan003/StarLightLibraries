package game.parkour.spawnpoint

import cmd.title as title
import cmd.spawnpoint as spawnpoint
import cmd.gamemode as gm
import cmd.entity as entity
import cmd.tag as tag
import mc.java.nbt as nbt
import mc.pointer as pt
import standard

if (Compiler.isJava()){
    scoreboard int X, Y, Z, U, OX, OY, OZ, OU

    """
    Reset the spawnpoint
    """
    void reset(){
        X, Y, Z, U, OX, OY, OZ, OU = null
    }

    """
    Teleport the player to last checkpoint
    """
    void respawn(){
        /summon marker ~ ~ ~ {Tags:["rsp.trg", "gb.collect"]}
        bool succeded = false
        tag.add("rsp.plr")
        int TX, TY, TZ, TU = X, Y, Z, U
        with(@e[tag=rsp.trg,limit=1]){
            nbt.x = TX
            nbt.y = TY
            nbt.z = TZ
            nbt.rotation_x = TU
            at(@s){
                /tp @s ~0.5 ~0.5 ~0.5
            }
            /tp @a[tag=rsp.plr] @s
            succeded = true
            entity.kill()
        }
        tag.remove("rsp.plr")
        //# fix for P_King glitch
        if (!succeded){
            entity.kill()
        }
    }

    """
    Set the spawnpoint
    """
    bool setSpawn(bool silent = false){
        int x = nbt.x
        int y = nbt.y
        int z = nbt.z
        int u = nbt.rotation_x
        bool set = true
        bool backward = false
        if (x == X && y == Y && z == Z){
            set = false
            U = u
        }
        if (x == OX && y == OY && z == OZ){
            set = false
            backward = true
        }
        if (set){
            OX = X
            OY = Y
            OZ = Z
            OU = U
            X = x
            Y = y
            Z = z
            U = u
            at(@s){
               spawnpoint.set()
            }
            if (!silent){
                /particle minecraft:totem_of_undying ~ ~ ~ 1 1 1 1 100 force
                /playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1
            }
        }
        if(backward){
            respawn()
            standard.tell(("Wrong way!","red"))
        }
        return(set)
    }

    """
    Set the spawnpoint
    """
    bool setSpawn(float sx, float sz, bool silent = false){
        float fx = nbt.x
        fx += sx
        float fz = nbt.z
        fz += sz
        int x = fx
        int y = nbt.y
        int z = fz
        int u = nbt.rotation_x
        bool set = true
        bool backward = false
        
        if (x == X && y == Y && z == Z){
            set = false
            U = u
        }
        if (x == OX && y == OY && z == OZ){
            set = false
            backward = true
        }
        if (set){
            OX = X
            OY = Y
            OZ = Z
            OU = U
            X = x
            Y = y
            Z = z
            U = u
            at(@s){
                /spawnpoint @s ~ ~ ~ ~
            }
            if (!silent){
                /particle minecraft:totem_of_undying ~ ~ ~ 1 1 1 1 100 force
                /playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1
            }
        }
        if(backward && gm.isAdventure()){
            respawn()
            title.force(@s,("Wrong way!","red"))
        }
        return(set)
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
}

if (Compiler.isBedrock()){
    scoreboard int UUID
    int uuid, guuid
    entity markers

    """
    Reset the spawnpoint
    """
    void reset(){
        
    }

    private bool checkOld(){
        with(markers & @s[distance=..3],true,UUID==uuid){
            return false
        }
        return true
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
    bool setSpawn(float $sx, float $sz, bool silent = false){
        if (checkOld()){
            return false
        }
        mark()
        spawnpoint.set()
        if (!silent){
            /playsound random.levelup @s ~ ~ ~ 1
            /particle minecraft:totem_particle
        }
        return true
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
}