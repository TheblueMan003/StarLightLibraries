package game.parkour.Manager

import cmd.gamemode as gm
import cmd.entity as entity
import cmd.tag as tag
import cmd.sound as sound
import mc.inventory as inv
import game.Timer
import game.parkour.flag_checkpoint as flag_checkpoint
import game.TimeSplit
import utils.CProcess
import utils

template Manager<level, death_block>{
    scoreboard Timer time
    scoreboard bool hasStarted
    scoreboard int Level
    
    lazy var timesplit_level = level+20
    TimeSplit<timesplit_level> speedrun{
    }

    flag_checkpoint.onCheckpoint(){
        Level++
        speedrun.step(Level, time.getTime())
        time.setLevel(Level)
    }
    CProcess main{
        def main(){
            with(@a,true){
                cheatDetect()
                utils.runOncePerPlayer(){
                    hasStarted = false
                    time = new Timer()
                    reset()
                }
                time.tick()
                if (gm.isSurvival()){
                    gm.adventure()
                }
                if (block(~ ~-1 ~, death_block) && gm.isAdventure()){
                    death()
                }
            }
        }

        def onStart(){
            
        }

        def onStop(){
            
        }
    }

    def start(){
        if (!hasStarted){
            main.start()
            time.setDisplay()
            time.showDeath()
            time.setMaxLevel(level)
            time.showLevel()
            time.start()
            hasStarted = true
            Level = 1
            time.setLevel(Level)
            speedrun.start()
            flag_checkpoint.start()
        }
    }

    def stop(){
        if (hasStarted){
            main.stop()
            hasStarted = false
            if (time.isRunning()){
                if (Compiler.isJava()){
                    sound.play(minecraft:ui.toast.challenge_complete)
                }
            }
            time.stop()
            flag_checkpoint.stop()
            speedrun.stop(Level+1, time.getTime())
            if(!@s[tag=Cheat] && Compiler.isJava()){
                /function parkour:leaderboard/submit
            }
        }
    }

    def restart(){
        reset()
        main.stop()
        main.start()
    }

    def death(){
        time.addDeath()
        flag_checkpoint.respawn()
    }

    def lazy bool isRunning(){
        return hasStarted
    }

    private void reset(){
        Level = 1
        time.reset()
        hasStarted = false
    }
    private void cheatDetect(){
        if (gm.isCreative() || gm.isSpectator()){
            with(@a){
                time.showCheat()
                tag.add("Cheat")
            }
        }
    }

    def debugReset(){
        tag.remove("Cheat")
        time = new Timer()
    }
}