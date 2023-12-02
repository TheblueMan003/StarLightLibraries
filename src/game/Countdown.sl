package game.Countdown

import cmd.actionbar as actionbar

enum TimerState{
    None, Play, Pause, Ended
}

"""
Represents a countdown timer

Call .tick() to make the timer tick
"""
struct Countdown{
    int h,m,s,t
    int dh,dm,ds,dt
    int kill, level,maxlevel, death
    TimerState stat
    bool display
    bool sKill, sDeath, sLevels
    bool global
    void=>void eventEnd
    bool hasEventEnd
    
    def this(int h, int m, int s, int t = 20){
        dh, dm, ds, dt = h, m, s, t
        this.h, this.m, this.s, this.t = h, m, s, t
        stat = TimerState.None
        global = false
        sKill, sDeath, sLevels = false
        display = false
        kill, level,maxlevel, death = 0
        hasEventEnd = false
    }
    
    """
    Set the event when the timer ends
    """
    def onEnd(void=>void event){
        eventEnd = event
        hasEventEnd = true
    }
    
    """
    Start the timer
    """
    def start(){
        if (stat == TimerState.None){
            stat = TimerState.Play
        }
    }
    
    """
    Pause the timer
    """
    def pause(){
        if (stat == TimerState.Play){
            stat = TimerState.Pause
        }
    }
    
    """
    Continue the timer
    """
    def continue(){
        if (stat == TimerState.Pause){
            stat = TimerState.Play
        }
    }
    
    """
    Stop the timer
    """
    def stop(){
        if (stat == TimerState.Pause || stat == TimerState.Play){
            stat = TimerState.Ended
        }
    }
    
    """
    Get the time in miliseconds
    """
    int getMilisec(){
        return(t*5)
    }

    """
    Add level to the timer
    """
    def addLevel(){
        if (level < maxlevel){
            level ++
        }
    }
    
    """
    Set the level of the timer
    """
    def setLevel(int l){
        if (l < maxlevel){
            level = l
        }
        else{
            level = maxlevel
        }
    }

    """
    Get the level of the timer
    """
    int getLevel(){
        return level
    }

    """
    Set the Max Level of the timer
    """
    def setMaxLevel(int l){
        maxlevel = l
    }

    """
    Add a death to the timer
    """
    def addDeath(){
        death ++
    }

    """
    Get the death count of the timer
    """
    int getDeath(){
        return(death)
    }

    """
    Set the death count of the timer
    """
    def setDeath(int d){
        death = d
    }

    """
    Add a kill to the timer
    """
    def addKill(){
        kill++
    }

    """
    Get the kill of the timer
    """
    int getKill(){
        return(kill)
    }

    """
    Set the kill of the timer
    """
    def setKill(int k){
        kill = k
    }
    

    """
    Reset the timer
    """
    def reset(){
        h,m,s,t = dh, dm, ds, dt
        stat = TimerState.None
        kill, level, death = 0
    }

    """
    Show the death in the timer
    """
    def showDeath(){
        sDeath = true
    }

    """
    Show the kill in the timer
    """
    def showKill(){
        sKill = true
    }

    """
    Show the level in the timer
    """
    def showLevel(){
        sLevels = true
    }

    """
    Set the timer to global
    """
    def setGlobal(bool g = true){
        global = g
    }

    """
    Set the display of the timer
    """
    def setDisplay(bool d = true){
        display = d
    }
    
    def private __display__(){
        int ms = getMilisec()
        if (display){
            if (global) as(@s) actionbar.use(10,10)
            actionbar.use(10,10)
            if (!sKill && !sDeath && !sLevels){
                if (global){
                    as(@a) actionbar.force(h,":",m,":",s,".",ms)
                }
                if (!global){
                    actionbar.force(h,":",m,":",s,".",ms)
                }
            }
            if (!sKill && !sDeath && sLevels){
                actionbar.force("Time: ",h,":",m,":",s,".",ms," - Level: ",level,"/",maxlevel)
            }
            if (!sKill && sDeath && sLevels){
                actionbar.force("Death: ",death," - Time: ",h,":",m,":",s,".",ms," - Level: ",level,"/",maxlevel)
            }
            if (!sKill && sDeath && !sLevels){
                actionbar.force("Death: ",death," - Time: ",h,":",m,":",s,".",ms)
            }
            if (sKill && !sDeath && !sLevels){
                actionbar.force("Kill: ",kill," - Time: ",h,":",m,":",s,".",ms)
            }
            if (sKill && !sDeath && sLevels){
                actionbar.force("Kill: ",kill," - Time: ",h,":",m,":",s,".",ms," - Level: ",level,"/",maxlevel)
            }
            if (sKill && sDeath && !sLevels){
                actionbar.force("Kill: ",kill," - Death: ",death,"- Time: ",h,":",m,":",s,".",ms)
            }
        }
    }
    
    """
    Make the timer tick
    """
    def tick(){
        __display__()

        if (stat == TimerState.Play){
            t -= 1
            if (t < 0){
                t = 19
                s-=1
            }
            if (s < 0){
                s = 59
                m-=1
            }
            if (m < 0){
                m = 59
                h -= 1
            }
            if (t <= 0 && s <= 0 && m <= 0 && h <= 0){
                stat = TimerState.Ended
                if (hasEventEnd){
                    eventEnd()
                }
            }
        }           
    }
}