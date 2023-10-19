package cmd.xp


"""
Add the given amount of xp to the player.
"""
def macro add(int value){
    if (Compiler.isJava()){
        /xp add @s $(value)
    }
    if (Compiler.isBedrock()){
        /xp $(value)
    }
}

"""
Adds the given amount of levels to the player.
"""
def macro addLevel(int value){
    if (Compiler.isJava()){
        /xp add @s $(value) levels
    }
    if (Compiler.isBedrock()){
        /xp $(value)L
    }
}

"""
Sets the xp of the player to the given value.
"""
def macro set(int value){
    if (Compiler.isJava()){
        /xp set @s $(value)
    }
    if (Compiler.isBedrock()){
        /xp -100000L
        /xp -100000
        /xp $(value)
    }
}

"""
Sets the level of the player to the given value.
"""
def macro setLevel(int value){
    if (Compiler.isJava()){
        /xp set @s $(value) levels
    }
    if (Compiler.isBedrock()){
        /xp -100000L
        /xp -100000
        /xp $(value)L
    }
}

"""
Returns the level of the player.
"""
int getLevel(){
    [nbt="XpLevel"] scoreboard int xp
    return xp
}

"""
Returns the xp of the player.
"""
int get(){
    [nbt="XpTotal"] scoreboard int xp
    return xp
}