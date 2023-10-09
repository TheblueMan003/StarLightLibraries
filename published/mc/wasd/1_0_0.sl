package mc.wasd

import mc.pointer as pt

[nbt="Motion[0]"] scoreboard json MotionX
[nbt="Motion[2]"] scoreboard json MotionY
[nbt="Pos[2]"] scoreboard json PosZ
[nbt="PickupDelay"] scoreboard json PickupDelay
[nbt="Rotation[0]"] scoreboard json RotationY
[nbt="UUID[0]"] scoreboard json UUID

def macro rotate(float x, float y){
    /execute facing $(x) 0 $(y) run tp @s ~ ~ ~ ~ 0
}

float atan2(float x, float y){
    float ret
    x *= 100000
    y *= 100000
    at(0 0 0){
        pt.run(){
            at(@s)rotate(x, y)
            ret = RotationY
        }
    }
    return ret
}
(int,int) wasd(){
    float mx = MotionX
    float my = MotionY
    float ry = RotationY

    int x = 0
    int y = 0


    if (mx == 0 && my == 0){
        return (0,0)
    }
    else{
        float dir2 = atan2(mx,my)
        float dir = dir2 - ry
        if (dir in -360.0..-215.0){
            dir += 360
        }
        if (dir in 215.0..360.0){
            dir -= 360
        }
        int w,a,s,d = 0
        if (dir in -67.0..67.0){
            w = 1
        }
        if (dir in 23.0..157.0){
            a = 1
        }
        if (dir in -157.0..-23.0){
            d = 1
        }
        if (dir in 113.0..248.0){
            s = 1
        }
        if (dir in -248.0..-113.0){
            s = 1
        }
        if (dir in -315.0..-225.0){
            a = 1
        }
        if (dir in 225.0..315.0){
            d = 1
        }
        x = d - a
        y = w - s
        return (x,y)
    }
}