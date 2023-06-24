package game.elytra

import cmd.actionbar as actionbar
import cmd.entity as entity
import cmd.gamemode as gamemode
import cmd.sound as sound
import mc.inventory as inventory
import mc.java.input as input
import cmd.java.data as data

public lazy mcobject ElytraBlock = minecraft:diamond_block
public lazy mcobject ElytraClearBlock = minecraft:gold_block
public lazy rawjson ElytraMessage = (("Elytra Equipped!","gold","bold"))

private scoreboard bool Elytra
private scoreboard int UpdateTick
private int count := 0
private void=>void onEquipCallback := null

def lazy onEquip(void=>void fct){
    onEquipCallback = fct
}
def @reset(){
    count = 0
}

"""
Remove Elytra from player
"""
public void removeElytra(){
    inventory.clear(minecraft:elytra)
    Elytra = 0
    count--
    @section.end()
}

"""
Give Elytra to player
"""
def giveElytra(){
    if (Elytra == false){
        actionbar.show(200,60,ElytraMessage)
        Elytra = 1
        if (Compiler.isJava()){
            inventory.setChestplate(minecraft:elytra{Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]})
        }
        else{
            inventory.setChestplate(minecraft:elytra, 1, {"item_lock": {"mode": "lock_in_slot"}})
        }
        sound.play(minecraft:item.armor.equip_elytra)
        @section.start()
        count++
        onEquipCallback()
    }
}
def @playertick(){
    Elytra:=0
    if (block(~ ~-1 ~, ElytraBlock) && !Elytra){
        //if(item.isnear(elytra)){
            giveElytra()
        //}
    }
    if (block(~ ~-1 ~, ElytraClearBlock) && Elytra){
        removeElytra()
    }
    if (Elytra){
        input.onDie(){
            removeElytra()
        }
    }
}
def summonElytra(){
    aligned(){
        if (Compiler.isJava()){
            /summon item ~ ~ ~ {Item:{id:"minecraft:elytra",tag:{Enchantments:[{}]},Count:1},PickupDelay:32767s,Age:0s,Tags:["item.eltra","keep"]}
        }
    }
}

def @itemtick(){
    if(@s[tag=!item.eltra] && @p[distance=..2,gamemode=creative]){
        if(block(~ ~-1 ~, ElytraBlock)){
            summonElytra()
            entity.kill()
        }
    }
}

def @itemtick(){
    if(@s[tag=item.eltra]){
        if (Compiler.isJava()){
            UpdateTick++
            if (UpdateTick > 500){
                data.set({PickupDelay:32767,Age:0})
                UpdateTick = 0
            }
        }
        if(!block(~ ~-1 ~, ElytraBlock)){
            entity.kill()
        }
    }
}