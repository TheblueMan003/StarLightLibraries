package game.Ring

import cmd.actionbar as actionbar
import cmd.entity as entity
import cmd.gamemode as gamemode
import cmd.sound as sound
import mc.inventory as inventory
import mc.java.input as input

public lazy mcobject ElytraBlock = minecraft:diamond_block
public lazy mcobject ElytraClearBlock = minecraft:gold_block
public lazy rawjson ElytraMessage = (("Elytra Equipped!","gold","bold"))

private scoreboard bool Elytra
private scoreboard int UpdateTick
private scoreboard int Number
private scoreboard int Firework

private int count := 0

private void=>void onRingCallback := pass
private void=>void onFireworkCallback := pass
private void=>void onEquipCallback := pass


class Ring{
    def __init__(int nb, int fw){
        Number = nb
        Firework = fw
    }
    def @tick main(){
        int nb = Number
        int fw = Firework
        if (@p[gamemode=creative]){
            if (Compiler.isJava()){
                /particle minecraft:dust 1 1 0 1 ~ ~ ~
            }
        }
        
        with(@a[distance=..3],true){
            if (Number == nb - 1){
                sound.play(minecraft:entity.experience_orb.pickup)
                Number = nb
                onRingCallback()
                for(int i=0;i < fw;i++){
                    /give @s firework_rocket
                    onFireworkCallback()
                }
            }
            else if (Number < nb - 1 && gamemode.isAdventure() && Elytra){
                Number = 0
                entity.kill()
            }
            if (gamemode.isCreative()){
                actionbar.show(40,10,"[Debug] ring: ",Number,"/", nb, " - fw: ", fw)
            }
        }
    }
}

def lazy onRing(void=>void fct){
    onRingCallback = fct
}
def lazy onEquip(void=>void fct){
    onEquipCallback = fct
}
def lazy onFirework(void=>void fct){
    onFireworkCallback = fct
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
    Number = 0
}

"""
Give Elytra to player
"""
def giveElytra(){
    if (Elytra == false){
        actionbar.show(200,60,ElytraMessage)
        Elytra = 1
        if (Compiler.isJava()){
            inventory.setchestplate(minecraft:elytra{Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]})
        }
        else{
            inventory.setchestplate(minecraft:elytra, 1, {"item_lock": {"mode": "lock_in_slot"}})
        }
        sound.play(minecraft:item.armor.equip_elytra)
        Number = 0
        count++
        onEquipCallback()
    }
}
def @playertick(){
    Elytra:=0
    if (block(~ ~-1 ~, ElytraBlock) && !Elytra){
        if(item.isnear(elytra)){
            giveElytra()
        }
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
                data.set({PickupDelay:32767s,Age:0s})
                UpdateTick = 0
            }
        }
        if(!block(~ ~-1 ~, ElytraBlock)){
            entity.kill()
        }
    }
}