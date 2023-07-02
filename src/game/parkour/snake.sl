package game.parkour.snake

import cmd.entity as entity
import cmd.block as block
import utils.CProcess
import mc.pointer as pt
import random


scoreboard int SnakeID
scoreboard int Speed
scoreboard int Delay
scoreboard int Length
scoreboard SnakeBlock Block1
scoreboard SnakeBlock Block2
scoreboard int SnakeTime = 0

entity snakeHead
entity snakeTail

bool enabled := true

lazy var resetBlock = minecraft:obsidian

enum SnakeBlock{
    white, 
    red, 
    orange, 
    yellow, 
    lime, 
    green, 
    light_blue, 
    aqua, blue, 
    purple, 
    magenta, 
    brown, 
    black, 
    pink, 
    light_gray, 
    gray, 
    cyan, 
    barrier
}
blocktag snake_block{
    minecraft:white_wool,
    minecraft:red_wool,
    minecraft:orange_wool,
    minecraft:yellow_wool,
    minecraft:lime_wool,
    minecraft:green_wool,
    minecraft:blue_wool,
    minecraft:light_blue_wool,
    minecraft:cyan_wool,
    minecraft:blue_wool,
    minecraft:purple_wool,
    minecraft:magenta_wool,
    minecraft:pink_wool,
    minecraft:brown_wool,
    minecraft:black_wool,
    minecraft:light_gray_wool,
    minecraft:gray_wool
}


def init(SnakeBlock b1, SnakeBlock b2, int speed, int length){
    SnakeID = 0
    Delay = 0
    Length = length
    Speed = speed
    Block1 = b1
    Block2 = b2
}
def summon(SnakeBlock b1, SnakeBlock b2, int speed, int length){
    snakeHead += pt.newPointer(){
        init(b1, b2, speed, length)
    }
    snakeTail += pt.newPointer(){
        init(b1, b2, speed, length)
    }
}
def summon(int speed, int length){
    switch(random.range(0, 13)){
        0 -> summon(SnakeBlock.lime,      SnakeBlock.green, speed, length)
        1 -> summon(SnakeBlock.blue,      SnakeBlock.cyan, speed, length)
        2 -> summon(SnakeBlock.blue,      SnakeBlock.light_blue, speed, length)
        3 -> summon(SnakeBlock.yellow,    SnakeBlock.orange, speed, length)
        4 -> summon(SnakeBlock.orange,    SnakeBlock.red, speed, length)
        5 -> summon(SnakeBlock.magenta,   SnakeBlock.purple, speed, length)
        6 -> summon(SnakeBlock.white,     SnakeBlock.black, speed, length)
        7 -> summon(SnakeBlock.gray,      SnakeBlock.light_gray, speed, length)
        8 -> summon(SnakeBlock.lime,      SnakeBlock.yellow,speed, length)
        9 -> summon(SnakeBlock.black,     SnakeBlock.red, speed, length)
        10 -> summon(SnakeBlock.black,    SnakeBlock.blue, speed, length)
        11 -> summon(SnakeBlock.black,    SnakeBlock.yellow, speed, length)
        12 -> summon(SnakeBlock.magenta,  SnakeBlock.pink, speed, length)
    }
    main.start()
    main.start()
}


def setblock(){
    SnakeID = (SnakeID + 1) 
    SnakeID %= 2
    SnakeBlock block
    if (SnakeID == 0){
        block = Block1
    }
    if (SnakeID == 1){
        block = Block2
    }
    switch(block){
        SnakeBlock.white -> block.set(~ ~ ~, minecraft:white_wool)
        SnakeBlock.red -> block.set(~ ~ ~, minecraft:red_wool)
        SnakeBlock.orange -> block.set(~ ~ ~, minecraft:orange_wool)
        SnakeBlock.yellow -> block.set(~ ~ ~, minecraft:yellow_wool)
        SnakeBlock.lime -> block.set(~ ~ ~, minecraft:lime_wool)
        SnakeBlock.green -> block.set(~ ~ ~, minecraft:green_wool)
        SnakeBlock.light_blue -> block.set(~ ~ ~, minecraft:light_blue_wool)
        SnakeBlock.cyan -> block.set(~ ~ ~, minecraft:cyan_wool)
        SnakeBlock.blue -> block.set(~ ~ ~, minecraft:blue_wool)
        SnakeBlock.purple -> block.set(~ ~ ~, minecraft:purple_wool)
        SnakeBlock.magenta -> block.set(~ ~ ~, minecraft:magenta_wool)
        SnakeBlock.pink -> block.set(~ ~ ~, minecraft:pink_wool)
        SnakeBlock.gray -> block.set(~ ~ ~, minecraft:gray_wool)
        SnakeBlock.light_gray -> block.set(~ ~ ~, minecraft:light_gray_wool)
        SnakeBlock.black -> block.set(~ ~ ~, minecraft:black_wool)
        SnakeBlock.brown -> block.set(~ ~ ~, minecraft:brown_wool)
        SnakeBlock.barrier -> block.set(~ ~ ~, minecraft:barrier)
    }
}

def copy(){
    val b1 = Block1
    val b2 = Block2
    val speed = Speed
    val length = Length
    int i = SnakeID
    snakeHead += pt.newPointer(){
        init(b1, b2, speed, length)
        SnakeID = i + 1
        setblock()
    }
    snake.main.start()
}

def headMain(){
    with(snakeHead,true){
        Delay += Speed
        if(Delay >= 20){
            Delay  = 0
            bool hasMoved = false
            if (block(~1 ~ ~, minecraft:tripwire) && !hasMoved){
                /tp @s ~1 ~ ~
                at(@s){setblock()}
                hasMoved = true
            }
            
            
            if (block(~-1 ~ ~, minecraft:tripwire) && hasMoved){
                at(~-1 ~ ~){
                    copy()
                }
            }
            if (block(~-1 ~ ~, minecraft:tripwire) && !hasMoved){
                /tp @s ~-1 ~ ~
                at(@s){setblock()}
                hasMoved = true
            }
            
            
            if (block(~ ~1 ~, minecraft:tripwire) && hasMoved){
                at(~ ~1 ~){
                    copy()
                }
            }
            if (block(~ ~1 ~, minecraft:tripwire) && !hasMoved){
                /tp @s ~ ~1 ~
                at(@s){setblock()}
                hasMoved = true
            }
            
            
            if (block(~ ~-1 ~, minecraft:tripwire) && hasMoved){
                at(~ ~-1 ~){
                    copy()
                }
            }
            if (block(~ ~-1 ~, minecraft:tripwire) && !hasMoved){
                /tp @s ~ ~-1 ~
                at(@s){setblock()}
                hasMoved = true
            }
            
            
            if (block(~ ~ ~1, minecraft:tripwire) && hasMoved){
                at(~ ~ ~1){
                    copy()
                }
            }
            if (block(~ ~ ~1, minecraft:tripwire) && !hasMoved){
                /tp @s ~ ~ ~1
                at(@s){setblock()}
                hasMoved = true
            }
            
            
            if (block(~ ~ ~-1, minecraft:tripwire) && hasMoved){
                at(~ ~ ~-1){
                    copy()
                }
            }
            if (block(~ ~ ~-1, minecraft:tripwire) && !hasMoved){
                /tp @s ~ ~ ~-1
                at(@s){setblock()}
                hasMoved = true
            }
            
            
            if(!hasMoved){
                snake.main.stop()
                entity.kill(@s)
            }
        }
    }
}

def rmblock(){
    block.set(minecraft:tripwire)
    //particles.sphere(minecraft:end_rod,1,0.1,1)
}

def copyTail(){
    snake.main.start()
    int length = Length
    int speed = Speed
    int b1 = Block1
    int b2 = Block2
    int i = SnakeID
    snakeTail += pt.newPointer(){
        init(b1, b2, speed, length)
        SnakeID = i
    }
}

def tailMain(){
    with(snakeTail,true){
        Delay += Speed
        if(Delay >= 20){
            Delay  = 0
            Length--
            if (Length < 0){
                bool hasMoved = false
                if (block(~1 ~ ~, #snake_block) && !hasMoved){
                    /tp @s ~1 ~ ~
                    at(@s){rmblock()}
                    hasMoved = true
                }
                
                if (block(~-1 ~ ~, #snake_block) && hasMoved){
                    at(~-1 ~ ~){
                        copyTail()
                        rmblock()
                    }
                }
                if (block(~-1 ~ ~, #snake_block) && !hasMoved){
                    /tp @s ~-1 ~ ~
                    at(@s){rmblock()}
                    hasMoved = true
                }
                
                
                if (block(~ ~1 ~, #snake_block) && hasMoved){
                    at(~ ~1 ~){
                        copyTail()
                        rmblock()
                    }
                }
                if (block(~ ~1 ~, #snake_block) && !hasMoved){
                    /tp @s ~ ~1 ~
                    at(@s){rmblock()}
                    hasMoved = true
                }
                
                
                if (block(~ ~-1 ~, #snake_block) && hasMoved){
                    at(~ ~-1 ~){
                        copyTail()
                        rmblock()
                    }
                }
                if (block(~ ~-1 ~, #snake_block) && !hasMoved){
                    /tp @s ~ ~-1 ~
                    at(@s){rmblock()}
                    hasMoved = true
                }
                
                if (block(~ ~ ~1, #snake_block) && hasMoved){
                    at(~ ~ ~1){
                        copyTail()
                        rmblock()
                    }
                }
                if (block(~ ~ ~1, #snake_block) && !hasMoved){
                    /tp @s ~ ~ ~1
                    at(@s){rmblock()}
                    hasMoved = true
                }
                
                
                if (block(~ ~ ~-1, #snake_block) && hasMoved){
                    at(~ ~ ~-1){
                        copyTail()
                        rmblock()
                    }
                }
                if (block(~ ~ ~-1, #snake_block) && !hasMoved){
                    /tp @s ~ ~ ~-1
                    at(@s){rmblock()}
                    hasMoved = true
                }
                if(!hasMoved){
                    snake.main.stop()
                    entity.kill(@s)
                }
            }
        }
    }
}


public void enable(){
    enabled = true
}
public void disable(){
    enabled = false
}

CProcess main{
    def main(){
        headMain()
        tailMain()
    }
}

template SnakeSpawner<block, speed, length>{
    entity reloader
    def @playertick(){
        enabled:=true
        if (snake.enabled){
            bool spawn = false
            if(block(~ ~-0.2 ~, block)){
                block.set(~ ~-0.2 ~, resetBlock)
                reloader += pt.newPointer()
                spawn = true
            }
            if (spawn){
                at(~ ~-1 ~){
                    summon(speed, length)
                }
                reload.start()
            }
        }
    }

    CProcess reload{
        def main(){
            with(reloader,true){
                SnakeTime ++
                if (SnakeTime > 125){
                    block.set(~ ~-1 ~, block)
                    stop()
                    entity.kill()
                }
            }
        }
    }
}
