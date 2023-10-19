package cmd.time

"""
Sets the time to the given amount of ticks.
"""
def macro set(int time){
    /time set $(time)
}
"""
Sets the time to the given amount of seconds.
"""
def macro setSeconds(float time){
    /time set $(time)s
}
"""
Sets the time to the given amount of day.
"""
def macro setDays(float time){
    /time set $(time)d
}

"""
Adds the given amount of ticks to the current time.
"""
def macro add(int time){
    /time add $(time)
}
"""
Adds the given amount of seconds to the current time.
"""
def macro addSeconds(float time){
    /time add $(time)s
}
"""
Adds the given amount of days to the current time.
"""
def macro addDays(float time){
    /time add $(time)d
}

if (Compiler.isJava()){
    """
    Gets the current time in ticks.
    """
    [noReturnCheck=true] lazy int get(){
        Compiler.cmdstore(_ret){
            /time query gametime
        }
    }

    """
    Gets the current day.
    """
    [noReturnCheck=true] lazy int getDay(){
        Compiler.cmdstore(_ret){
            /time query day
        }
    }

    """
    Gets the current day time.
    """
    [noReturnCheck=true] lazy int getDayTime(){
        Compiler.cmdstore(_ret){
            /time query daytime
        }
    }
}