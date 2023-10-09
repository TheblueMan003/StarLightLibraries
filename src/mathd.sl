package mathd

import mc.pointer as pt

[nbt="Pos[0]", type="double"] scoreboard json PosX
[nbt="Pos[2]", type="double"] scoreboard json PosZ
[nbt="Rotation[0]"] scoreboard json RotationY

def macro rotate(float x, float y){
    /execute facing $(x) 0 $(y) run tp @s ~ ~ ~ ~ 0
}

"""
Compute the arctangent of y/x, in degree.
"""
float atan2(float y, float x){
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

"""
Compute sin of x, in degree.
"""
float sin(float x){
    float ret
    at(0 0 0){
        pt.run(){
            RotationY = x
            ret = PosZ
        }
    }
    return ret
}

"""
Compute cos of x, in degree.
"""
float cos(float x){
    float ret
    at(0 0 0){
        pt.run(){
            RotationY = x
            ret = PosX
        }
    }
    return ret
}

"""
Compute tan of x, in degree.
"""
float tan(float x){
    return sin(x)/cos(x)
}