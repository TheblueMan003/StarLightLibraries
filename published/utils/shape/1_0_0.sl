package utils.shape

import mc.pointer as pointer

"""
Execute an action at each point of a circle of a given radius and a given center.
"""
def lazy circle(mcposition center, float radius, int angular_speed, int=>void action){
    int count = -1
    def inner(float angle){
        if(angle < 360){
            at({^, ^, ^radius})action(count++)
            inner(angle + angular_speed)
        }
    }
    at(center)rotated(0,0){
        inner(0)
    }
}

"""
Execute an action at each point of a line from start to end.
"""
def lazy line(mcposition start, mcposition end, float step, int=>void action){
    int count = -1
    def inner(){
        bool end = false
        /tp @s ~ ~ ~ ~ ~
        at(end)if (@s[distance=..1]){
            end = true
        }
        if(end){
            action(count++)
            at({^,^,^step})inner()
        }
    }
    at(start){
        pointer.run(){
            facing(end)inner()
        }
    }
}