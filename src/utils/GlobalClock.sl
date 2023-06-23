package utils.GlobalClock

int tick

[tag.order=9999]
private @tick void tick(){
    tick++
}

"""
Reset the global clock to 0
"""
public void reset(){
    tick = 0
}

"""
Get the current tick of the global clock
"""
public lazy int get(){
    return tick
}