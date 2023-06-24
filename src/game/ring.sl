package game.Ring

import cmd.actionbar as actionbar
import cmd.entity as entity
import cmd.gamemode as gamemode
import cmd.sound as sound
import mc.inventory as inventory
import mc.java.input as input

private scoreboard int Number
private scoreboard int Firework

private int count := 0

private void=>void onRingCallback := null
private void=>void onFireworkCallback := null


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
            else if (Number < nb - 1 && gamemode.isAdventure()){
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
def lazy onFirework(void=>void fct){
    onFireworkCallback = fct
}
def @section.start(){
    Number = 0
}