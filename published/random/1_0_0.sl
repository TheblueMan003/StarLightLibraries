package random

if (Compiler.isBedrock){
    """
    Return a random number between `x` (included) and `y` (excluded)
    """
    int range(int x, int y){
        int ret
        if (Compiler.isVariable(x)){
            Compiler.random(ret, -2147483648, 2147483647)
            ret %= (y - x)
            ret += x
        }
        else if (Compiler.isVariable(y)){
            Compiler.random(ret, -2147483648, 2147483647)
            ret %= (y - x)
            ret += x
        }
        else{
            Compiler.random(ret, x, y-1)
        }
        return ret
    }
    """
    Return a random number between `x` (included) and `y` (excluded)
    """
    float range(float x, float y){
        float ret
        if (Compiler.isVariable(x)){
            Compiler.random(ret, -2147483648, 2147483647)
            ret %= (y - x)
            ret += x
        }
        else if (Compiler.isVariable(y)){
            Compiler.random(ret, -2147483648, 2147483647)
            ret %= (y - x)
            ret += x
        }
        else{
            Compiler.random(ret, x, y-0.001)
        }
        return ret
    }
}
if (Compiler.isJava){
    import mc.java.nbt as nbt
    
    """
    Return a random number between `x` (included) and `y` (excluded)
    """
    int range(int x, int y){
        int ret
        /summon marker ~ ~ ~ {Tags:["random.trg"]}
        with(@e[tag=random.trg,limit=1]){
            nbt.getNBT(ret, "UUID[0]", 1)
            /kill
        }
        ret %= y-x
        ret += x
        return ret
    }
    """
    Return a random number between `x` (included) and `y` (excluded)
    """
    float range(float x, float y){
        float ret
        /summon marker ~ ~ ~ {Tags:["random.trg"]}
        with(@e[tag=random.trg,limit=1]){
            nbt.getNBT(ret, "UUID[0]", 0.001)
            /kill
        }
        ret %= y-x
        ret += x
        return ret
    }
}

"""
Return a random number between 0 and `x` (excluded)
"""
lazy int range(int x){
    return range(0, x)
}

"""
Return a random number between 0 and `x` (excluded)
"""
lazy float range(float x){
    return range(0.0, x)
}

"""
Return a random number between `x` (included) and `y` (excluded)
"""
lazy int next(){
    import standard.int as int
    return range(int.minValue, int.maxValue)
}

"""
Return a random number between `x` (included) and `y` (excluded)
"""
lazy float nextFloat(){
    import standard.float as float
    return range(float.minValue, float.maxValue)
}

"""
Return a random number between `x` (included) and `y` (excluded)
"""
lazy bool chance(float percent){
    float a = range(0.0, 100.0)
    float b = percent*100
    if (a < b){
        return true
    }
    else{
        return false
    }
}