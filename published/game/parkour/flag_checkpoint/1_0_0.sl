package game.parkour.flag_checkpoint

import game.parkour.spawnpoint as parkour_spawnpoint
import mc.effect_blocks as effect_blocks
import mc.java.armor_stand as armor_stand
import mc.bedrock.Entity
import cmd.actionbar as actionbar
import cmd.gamemode as gamemode
import cmd.block as block
import cmd.entity as entity
import cmd.sound as sound
import cmd.tag as tag
import random
import mc.java.resourcespack.models as models
import utils.CProcess

int debugLevel
int gameID := 0

bool useTeam := true
bool forceAdventure := true

void=>void onTakeCallback := null
void=>void onLeaveCallback := null
void=>void onMarkCallback := null

enum ckp_flag_color(string char, string color){
    red("\uE200","red"),
    orange("\uE201", "gold"),
    yellow("\uE202", "yellow"),
    lime("\uE203","green"),
    green("\uE204","dark_green"),
    light_blue("\uE205","aqua"),
    blue("\uE206","blue"),
    cyan("\uE207","dark_aqua"),
    magenta("\uE208","light_purple"),
    purple("\uE209","dark_purple"),
    pink("\uE210","light_purple"),
    light_gray("\uE211","gray"),
    gray("\uE212", "dark_gray"),
    black("\uE213", "black"),
    brown("\uE214", "dark_red")
}

Entity CheckpointFlag{
    setName("ckp_flag")
    setGeometry("ckp_flag")
    setIsSpawnable(true)
    isPushable(false, false)
    setInvinsible()
    addTexture("blank", "entities/ckp_flag_checkpoint_blank")
    forgenerate($i, ckp_flag_color){
        addTexture("$i", "entities/ckp_flag_checkpoint_$i")
    }
    foreach(i in 0..15){
        Compiler.insert($i, i){
            event("set_color_$i"){
                lazy int j = i + 1
                setVariant(j)
            }
        }
    }
    event("reset_color"){
        setVariant(0)
    }
}

def setUseTeam(bool v){
    useTeam = v
}

def setForceAdventure(bool v){
    forceAdventure = true
}

scoreboard bool Started
scoreboard bool WasOnCheckpoint
scoreboard int Level
scoreboard int GameID
scoreboard bool Taken
scoreboard ckp_flag_color Color
scoreboard int Time
scoreboard int AnimationTick
scoreboard int PrevAngle

def take(){
    WasOnCheckpoint := false
    bool onCheckpoint = false
    effect_blocks.feet(minecraft:diamond_block, 1){
        mark()
        if (parkour_spawnpoint.setSpawn()){
            actionbar.show(100, 20, ("Checkpoint !", "yellow", "bold"))
            onTakeCallback()
        }
        WasOnCheckpoint = true
        onCheckpoint = true
    }
    
    if (WasOnCheckpoint && !onCheckpoint){
        onLeaveCallback()
        WasOnCheckpoint = false
    }
}
def mark(){
    int c = Color
    bool marked = false
    with(@e[tag=ckp.flag,distance=..3,sort=nearest,limit=1],true){
        Taken := false
        if (!Taken){
            Taken = true
            marked = true
            if (Compiler.isJava()){
                lazy int d = 0
                switch(c){
                    foreach(cpk in 0..15){
                        cpk -> {
                            d = 2+cpk
                            armor_stand.setModel(minecraft:jungle_boat, d)
                        }
                    }
                }
            }
            if (Compiler.isBedrock()){
                switch(c){
                    foreach(cpk in 0..15){
                        cpk -> {
                            Compiler.insert($c, cpk){
                                entity.event("set_color_$c")
                            }
                        }
                    }
                }
            }
            as(@a)sound.play(minecraft:entity.villager.work_cartographer)
            Time = 10000
            AnimationTick = 1
        }
    }
    if (marked){
        onMarkCallback()
    }
}
def unmark(){
    Taken = false
    if (Compiler.isJava()){
        armor_stand.setModel(minecraft:jungle_boat, 1)
    }
    if (Compiler.isBedrock()){
        entity.event("reset_color")
    }
}
def respawn(){
    parkour_spawnpoint.respawn()
}

def lazy onCheckpoint(void=>void fct){
    onTakeCallback = fct
}
def lazy onLeave(void=>void fct){
    onLeaveCallback = fct
}
def lazy onMark(void=>void fct){
    onMarkCallback = fct
}

def getColor(){
    int c = random.range(0, 15)
    int n = 0
    bool cond = true
    while(cond){
        bool found = 0
        with(@a, true, Started && Color == c){
            found = 1
        }
        if (!found){
            cond = false
        }
        if (found){
            c++
            n++
            if (n > 15){
                cond = false
            }
        }
    }
    Color = c
}
def start(){
    Started = true
    Level = 1
    getColor()
    parkour_spawnpoint.reset()
    parkour_spawnpoint.setSpawn(0,0)
    resetAll()
    if (forceAdventure){
        gamemode.adventure()
    }
    main.start()
}
def stop(){
    Started = false
    Color = -1
    main.stop()
}

CProcess main{
    def main(){
        with(@a, true, Started){
            take()
        }
        with(@e[tag=ckp.flag],true){
            Time--
            if (Time == 0){
                unmark()
            }
            
            if (!block(^ ^-1 ^1, minecraft:diamond_block)){/*
                block.replace(~-3 ~-5 ~-3, ~3 ~5 ~3, minecraft:air, minecraft:smooth_quartz_stairs)
                block.replace(~-3 ~-5 ~-3, ~3 ~5 ~3, minecraft:air, minecraft:diorite_wall)
                block.replace(~-3 ~-5 ~-3, ~3 ~5 ~3, minecraft:air, minecraft:smooth_quartz_slab)
                block.replace(~-3 ~-5 ~-3, ~3 ~5 ~3, minecraft:air, minecraft:chiseled_quartz_block)*/
                entity.kill()
            }
            if (GameID != gameID){
                unmark()
                GameID = gameID
            }
        }
    }
}
def @reset resetAll(){
    gameID++
}
def createLeft(){
    /tp @s ~ ~ ~ ~ 0
    at(@s){
        aligned(){
            summonLeft()
        }
    }
}
def createRight(){
    /tp @s ~ ~ ~ ~ 0
    at(@s){
        aligned(){
            summonRight()
        }
    }
}
def summonLeft(){
    at(^1 ^ ^1){
        if (Compiler.isJava()){
            entity.summon(minecraft:armor_stand,{Tags:["ckp.flag"], NoGravity:1,Invisible:1}){
                at(@s){
                    facing(@p){
                        /tp @s ~ ~ ~ ~ ~
                    }
                }
                unmark()
                debugLevel++
                GameID = gameID
                Level = debugLevel
            }
        }
        if (Compiler.isBedrock()){
            entity.summon(sl:ckp_flag){
                tag.add("ckp.flag")
                at(@s){
                    facing(@p){
                        /tp @s ~ ~ ~ ~ ~
                    }
                }
                debugLevel++
                GameID = gameID
                Level = debugLevel
            }
        }
    }
}
def summonRight(){
    at(^-1 ^ ^1){
        if (Compiler.isJava()){
            entity.summon(minecraft:armor_stand,{Tags:["ckp.flag"], NoGravity:1,Invisible:1}){
                at(@s){
                    facing(@p){
                        /tp @s ~ ~ ~ ~ ~
                    }
                }
                unmark()
                debugLevel++
                GameID = gameID
                Level = debugLevel
            }
        }
        if (Compiler.isBedrock()){
            entity.summon(sl:ckp_flag){
                tag.add("ckp.flag")
                at(@s){
                    facing(@p){
                        /tp @s ~ ~ ~ ~ ~
                    }
                }
                debugLevel++
                GameID = gameID
                Level = debugLevel
            }
        }
    }
}
if (Compiler.isJava()){
    def summonCheckpointStructure(){
        block.set(~ ~-1 ~, minecraft:diamond_block)
        
        block.set(~1 ~-1 ~-1, minecraft:smooth_quartz_stairs[facing=west,half=top,shape=outer_left,waterlogged=false])
        block.set(~1 ~-1 ~, minecraft:smooth_quartz_stairs[facing=west,half=top,shape=straight])
        block.set(~1 ~-1 ~1, minecraft:smooth_quartz_stairs[facing=west,half=top,shape=outer_right,waterlogged=false])
        
        block.set(~ ~-1 ~1, minecraft:smooth_quartz_stairs[facing=north,half=top,shape=straight,waterlogged=false])
        block.set(~ ~-1 ~-1, minecraft:smooth_quartz_stairs[facing=south,half=top,shape=straight,waterlogged=false])
        
        block.set(~-1 ~-1 ~-1, minecraft:smooth_quartz_stairs[facing=south,half=top,shape=outer_left,waterlogged=false])
        block.set(~-1 ~-1 ~, minecraft:smooth_quartz_stairs[facing=east,half=top,shape=straight,waterlogged=false])
        block.set(~-1 ~-1 ~1, minecraft:smooth_quartz_stairs[facing=east,half=top,shape=outer_left,waterlogged=false])
        
        block.set(~ ~-2 ~, minecraft:chiseled_quartz_block)
        block.set(~ ~-3 ~, minecraft:diorite_wall[east=none,north=none,south=none,up=true,waterlogged=false,west=none])
        block.set(~ ~-4 ~, minecraft:smooth_quartz_slab[type=top,waterlogged=false])
    }
}

private void _(){
    if (Compiler.isJava()){
        models.add(minecraft:jungle_boat, "item/checkpoint/flag_checkpoint_blank",1)
        lazy var index = 2
        forgenerate($i, ckp_flag_color){
            models.add(minecraft:jungle_boat, "item/checkpoint/flag_checkpoint_$i",index)
            index++
        }
        models.generate(minecraft:jungle_boat)

        forgenerate($i, ckp_flag_color){
            [java_rp = true] jsonfile models.item.checkpoint.flag_checkpoint_$i{
            "credit": "Made with Blockbench",
            "texture_size": [64, 64],
            "textures": {
                "0": "item/cpk_flag_checkpoint_$i",
                "particle": "item/cpk_flag_checkpoint_$i"
            },
            "elements": [
                {
                    "name": "body",
                    "from": [4, 0, 4],
                    "to": [12, 4, 12],
                    "faces": {
                        "north": {"uv": [5, 8.5, 7, 9.5], "texture": "#0"},
                        "east": {"uv": [3, 8.5, 5, 9.5], "texture": "#0"},
                        "south": {"uv": [9, 8.5, 11, 9.5], "texture": "#0"},
                        "west": {"uv": [7, 8.5, 9, 9.5], "texture": "#0"},
                        "up": {"uv": [7, 8.5, 5, 6.5], "texture": "#0"},
                        "down": {"uv": [9, 6.5, 7, 8.5], "texture": "#0"}
                    }
                },
                {
                    "name": "body",
                    "from": [6.5, 0.1, 6.5],
                    "to": [9.5, 32, 9.5],
                    "faces": {
                        "north": {"uv": [0.75, 6, 1.5, 13.75], "texture": "#0"},
                        "east": {"uv": [0, 6, 0.75, 13.75], "texture": "#0"},
                        "south": {"uv": [2.25, 6, 3, 13.75], "texture": "#0"},
                        "west": {"uv": [1.5, 6, 2.25, 13.75], "texture": "#0"},
                        "up": {"uv": [1.5, 6, 0.75, 5.25], "texture": "#0"},
                        "down": {"uv": [2.25, 5.25, 1.5, 6], "texture": "#0"}
                    }
                },
                {
                    "name": "body",
                    "from": [-0.5, 29.1, 3.5],
                    "to": [16.5, 32, 6.5],
                    "faces": {
                        "north": {"uv": [3.75, 6, 8, 6.5], "texture": "#0"},
                        "east": {"uv": [3, 6, 3.75, 6.5], "texture": "#0"},
                        "south": {"uv": [8.75, 6, 13, 6.5], "texture": "#0"},
                        "west": {"uv": [8, 6, 8.75, 6.5], "texture": "#0"},
                        "up": {"uv": [8, 6, 3.75, 5.25], "texture": "#0"},
                        "down": {"uv": [12.25, 5.25, 8, 6], "texture": "#0"}
                    }
                },
                {
                    "name": "bone",
                    "from": [-0.5, 8.1, 5],
                    "to": [16.5, 30, 5],
                    "faces": {
                        "north": {"uv": [0, 0, 4.25, 5.25], "texture": "#0"},
                        "east": {"uv": [0, 0, 0, 5.25], "texture": "#0"},
                        "south": {"uv": [0, 0, 4.25, 5.25], "texture": "#0"},
                        "west": {"uv": [4.25, 0, 4.25, 5.25], "texture": "#0"},
                        "up": {"uv": [4.25, 0, 0, 0], "texture": "#0"},
                        "down": {"uv": [8.5, 0, 4.25, 0], "texture": "#0"}
                    }
                }
            ],
            "display": {
                "head": {
                    "translation": [0, -29.25, 0],
                    "scale": [1.75, 1.75, 1.75]
                }
            },
            "groups": [
                {
                    "name": "body",
                    "origin": [0, 0, 0],
                    "color": 0,
                    "shade": false,
                    "children": [
                        0,
                        1,
                        2,
                        {
                            "name": "bone",
                            "origin": [0.5, 30.1, -3.1],
                            "color": 1,
                            "children": [3]
                        }
                    ]
                }
            ]
        }
        }
    }
}