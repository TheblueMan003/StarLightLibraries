package mc.effect_blocks

"""
Give the player an effect when they are standing on a block
"""
def lazy feet(mcobject block, mcobject $effect, int $dur, int $amp){
    forgenerate($i,-0.4..0.4 by 0.4){
        forgenerate($j,-0.4..0.4 by 0.4){
            if (block(~$i ~-1 ~$j, block)){
                /effect give @s $effect $dur $amp true
            }
        }
    }
}

"""
Give the player an effect when they are standing on a block above a certain precision
"""
def lazy feet(mcobject block, float $precision, mcobject $effect, int $dur, int $amp){
    forgenerate($i,-0.4..0.4 by 0.4){
        forgenerate($j,-0.4..0.4 by 0.4){
            if (block(~$i ~-$precision ~$j, block)){
                /effect give @s $effect $dur $amp true
            }
        }
    }
}

"""
Execute a function when the player is standing on a block
"""
def lazy feet(mcobject block, void=>void fun){
    forgenerate($i,-0.4..0.4 by 0.4){
        forgenerate($j,-0.4..0.4 by 0.4){
            if (block(~$i ~-0.1 ~$j, block)){
                at(~$i ~-0.1 ~$j){
                    fun()
                }
            }
        }
    }
}

"""
Execute a function when the player is standing on a block above a certain precision
"""
def lazy feet(mcobject block, float $precision, void=>void fun){
    forgenerate($i,-0.4..0.4 by 0.4){
        forgenerate($j,-0.4..0.4 by 0.4){
            if (block(~$i ~-$precision ~$j, block)){
                at(~$i ~-$precision ~$j){
                    fun()
                }
            }
        }
    }
}

"""
Give the player an effect when they are standing below a block
"""
def lazy head(mcobject block, mcobject $effect, int $dur, int $amp){
    forgenerate($i,-0.4..0.4 by 0.4){
        forgenerate($j,-0.4..0.4 by 0.4){
            if (block(~$i ~1.9 ~$j, block)){
                /effect give @s $effect $dur $amp true
            }
        }
    }
}

"""
Give the player an effect when they are standing below a block with a certain precision
"""
def lazy head(mcobject block, float precision, mcobject $effect, int $dur, int $amp){
    lazy val k = 1.8 + precision
    Compiler.insert($k, k){
        forgenerate($i,-0.4..0.4 by 0.4){
            forgenerate($j,-0.4..0.4 by 0.4){
                if (block(~$i ~$k ~$j, block)){
                    /effect give @s $effect $dur $amp true
                }
            }
        }
    }
}

"""
Execute a function when the player is standing below a block
"""
def lazy head(mcobject block, void=>void fun){
    forgenerate($i,-0.4..0.4 by 0.4){
        forgenerate($j,-0.4..0.4 by 0.4){
            if (block(~$i ~1.9 ~$j, block)){
                at(~$i ~1.9 ~$j){
                    fun()
                }
            }
        }
    }
}

"""
Execute a function when the player is standing below a block with a certain precision
"""
def lazy head(mcobject block, float precision, void=>void fun){
    lazy val k = 1.8 + precision
    Compiler.insert($k, k){
        forgenerate($i,-0.4..0.4 by 0.4){
            forgenerate($j,-0.4..0.4 by 0.4){
                if (block(~$i ~$k ~$j, block)){
                    at(~$i ~$k ~$j){
                        fun()
                    }
                }
            }
        }
    }
}

"""
Give the player an effect when they are standing on a block. No checks are made for the side block.
"""
def lazy footSingle(mcobject block, mcobject $effect, int $dur, int $amp){
    if (block(~ ~-1 ~, block)){
        /effect give @s $effect $dur $amp true
    }
}

"""
Give the player an effect when they are standing on a block above a certain precision. No checks are made for the side block.
"""
def lazy footSingle(mcobject block, float $precision, mcobject $effect, int $dur, int $amp){
    if (block(~ ~-$precision ~, block)){
        /effect give @s $effect $dur $amp true
    }
}

"""
Execute a function when the player is standing on a block. No checks are made for the side block.
"""
def lazy footSingle(mcobject block, void=>void fun){
    if (block(~ ~-1 ~, block)){
        fun()
    }
}

"""
Execute a function when the player is standing on a block above a certain precision. No checks are made for the side block.
"""
def lazy footSingle(mcobject block, float $precision, void=>void fun){
    if (block(~ ~-$precision ~, block)){
        fun()
    }
}

"""
Give the player an effect when they are standing below a block. No checks are made for the side block.
"""
def lazy headSingle(mcobject block, mcobject $effect, int $dur, int $amp){
    if (block(~ ~1.9 ~, block)){
        /effect give @s $effect $dur $amp true
    }
}

"""
Give the player an effect when they are standing below a block with a certain precision. No checks are made for the side block.
"""
def lazy headSingle(mcobject block, float precision, mcobject $effect, int $dur, int $amp){
    lazy val k = 1.8 + precision
    Compiler.insert($k, k){
        if (block(~ ~$k ~, block)){
            /effect give @s $effect $dur $amp true
        }
    }
}

"""
Execute a function when the player is standing below a block. No checks are made for the side block.
"""
def lazy headSingle(mcobject block, void=>void fun){
    if (block(~ ~1.9 ~, block)){
        fun()
    }
}

"""
Execute a function when the player is standing below a block with a certain precision. No checks are made for the side block.
"""
def lazy headSingle(mcobject block, float precision, void=>void fun){
    lazy val k = 1.8 + precision
    Compiler.insert($k, k){
        if (block(~ ~$k ~, block)){
            fun()
        }
    }
}