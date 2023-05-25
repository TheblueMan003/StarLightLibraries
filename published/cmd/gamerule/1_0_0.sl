package cmd.gamerule

"""
Show Advancements in chat (Java Edition only)
"""
def lazy announceAdvancements(bool value){
    if (Compiler.isJava()){
        if (value){
            /gamerule announceAdvancements true
        } else {
            /gamerule announceAdvancements false
        }
    }
}

"""
Block drops instantly when broken (Java Edition only)
"""
def lazy blockExplosionDropDecay(bool value){
    if (Compiler.isJava()){
        if (value){
            /gamerule blockExplosionDropDecay true
        } else {
            /gamerule blockExplosionDropDecay false
        }
    }
}

"""
Whether command block should be enabled (Bedrock Edition only)
"""
def lazy commandBlocksEnabled(bool value){
    if (Compiler.isBedrock()){
        if (value){
            /gamerule commandBlocksEnabled true
        } else {
            /gamerule commandBlocksEnabled false
        }
    }
}


"""
Whether command block output should be enabled
"""
def lazy commandBlockOutput(bool value){
    if (value){
        /gamerule commandBlockOutput true
    } else {
        /gamerule commandBlockOutput false
    }
}

"""
/fill, /clone max size (Java Edition only)
"""
def lazy commandModificationBlockLimit(int $value){
    if (Compiler.isJava()){
        /gamerule commandModificationBlockLimit $value
    }
}

"""
Disable Elytra Movement Check (Java Edition only)
"""
def lazy disableElytraMovementCheck(bool value){
    if (Compiler.isJava()){
        if (value){
            /gamerule disableElytraMovementCheck true
        } else {
            /gamerule disableElytraMovementCheck false
        }
    }
}

"""
Disable Raids (Java Edition only)
"""
def lazy disableRaids(bool value){
    if (Compiler.isJava()){
        if (value){
            /gamerule disableRaids true
        } else {
            /gamerule disableRaids false
        }
    }
}

"""
Daylight cycle
"""
def lazy doDaylightCycle(bool value){
    if (value){
        /gamerule doDaylightCycle true
    } else {
        /gamerule doDaylightCycle false
    }
}

"""
Whether entity drops should be enabled
"""
def lazy doEntityDrops(bool value){
    if (value){
        /gamerule doEntityDrops true
    } else {
        /gamerule doEntityDrops false
    }
}

"""
Whether fire should spread and naturally extinguish
"""
def lazy doFireTick(bool value){
    if (value){
        /gamerule doFireTick true
    } else {
        /gamerule doFireTick false
    }
}

"""
Whether if phantoms can spawn in the night
"""
def lazy doInsomnia(bool value){
    if (value){
        /gamerule doInsomnia true
    } else {
        /gamerule doInsomnia false
    }
}

"""
Whether if player should respawn immediately without showing the death screen
"""
def lazy doImmediateRespawn(bool value){
    if (value){
        /gamerule doImmediateRespawn true
    } else {
        /gamerule doImmediateRespawn false
    }
}

"""
Whether if players can craft items in Crafting Table without the need of a recipe
"""
def lazy doLimitedCrafting(bool value){
    if (Compiler.isJava()){
        if (value){
            /gamerule doLimitedCrafting true
        } else {
            /gamerule doLimitedCrafting false
        }
    }
}

"""
Whether if mob loot should be dropped
"""
def lazy doMobLoot(bool value){
    if (value){
        /gamerule doMobLoot true
    } else {
        /gamerule doMobLoot false
    }
}


"""
Whether if mobs can spawn naturally
"""
def lazy doMobSpawning(bool value){
    if (value){
        /gamerule doMobSpawning true
    } else {
        /gamerule doMobSpawning false
    }
}

"""
Whether if patrolling monsters can spawn
"""
def lazy doPatrolSpawning(bool value){
    if (Compiler.isJava()){
        if (value){
            /gamerule doPatrolSpawning true
        } else {
            /gamerule doPatrolSpawning false
        }
    }
}

"""
Whether if traders can spawn
"""
def lazy doTraderSpawning(bool value){
    if (Compiler.isJava()){
        if (value){
            /gamerule doTraderSpawning true
        } else {
            /gamerule doTraderSpawning false
        }
    }
}

"""
Whether if block drops should be enabled
"""
def lazy doTileDrops(bool value){
    if (value){
        /gamerule doTileDrops true
    } else {
        /gamerule doTileDrops false
    }
}

"""
Whether if vine growth should be enabled
"""
def lazy doVinesSpread(bool value){
    if (Compiler.isJava()){
        if (value){
            /gamerule doVinesSpread true
        } else {
            /gamerule doVinesSpread false
        }
    }
}

"""
Whether if weather should change
"""
def lazy doWeatherCycle(bool value){
    if (value){
        /gamerule doWeatherCycle true
    } else {
        /gamerule doWeatherCycle false
    }
}

"""
Whether if Warden can spawn
"""
def lazy doWardenSpawning(bool value){
    if (Compiler.isJava()){
        if (value){
            /gamerule doWardenSpawning true
        } else {
            /gamerule doWardenSpawning false
        }
    }
}

"""
Whether if Drowning Damage should be enabled
"""
def lazy drowningDamage(bool value){
    if (value){
        /gamerule drowningDamage true
    } else {
        /gamerule drowningDamage false
    }
}

"""
Whether if Fall Damage should be enabled
"""
def lazy fallDamage(bool value){
    if (value){
        /gamerule fallDamage true
    } else {
        /gamerule fallDamage false
    }
}

"""
Whether if Fire Damage should be enabled
"""
def lazy fireDamage(bool value){
    if (value){
        /gamerule fireDamage true
    } else {
        /gamerule fireDamage false
    }
}


"""
Whether if monster should forgive dead players
"""
def lazy forgiveDeadPlayers(bool value){
    if (Compiler.isJava()){
        if (value){
            /gamerule forgiveDeadPlayers true
        } else {
            /gamerule forgiveDeadPlayers false
        }
    }
}

"""
Whether if freezing damage should be enabled
"""
def lazy freezeDamage(bool value){
    if (Compiler.isBedrock()){
        if (value){
            /gamerule freezeDamage true
        } else {
            /gamerule freezeDamage false
        }
    }
}

"""
Whether if Global Sound Events should be enabled
"""
def lazy globalSoundEvents(bool value){
    if (Compiler.isJava()){
        if (value){
            /gamerule globalSoundEvents true
        } else {
            /gamerule globalSoundEvents false
        }
    }
}

"""
Whether if player should drop items on death
"""
def lazy keepInventory(bool value){
    if (value){
        /gamerule keepInventory true
    } else {
        /gamerule keepInventory false
    }
}

"""
Number of command in function that can be executed per tick
"""
def lazy functionCommandLimit(int $value){
    if (Compiler.isJava()){
        /gamerule maxCommandChainLength $value
    }
    if (Compiler.isBedrock()){
        /gamerule functionCommandLimit $value
    }
}

"""
Whether if lava should convert to source
"""
def lazy lavaSourceConversion(bool value){
    if (Compiler.isJava()){
        if (value){
            /gamerule lavaSourceConversion true
        } else {
            /gamerule lavaSourceConversion false
        }
    }
}

"""
Whether if admin command should be logged
"""
def lazy logAdminCommands(bool value){
    if (Compiler.isJava()){
        if (value){
            /gamerule logAdminCommands true
        } else {
            /gamerule logAdminCommands false
        }
    }
}

"""
Max number of command blocks that can be chained
"""
def lazy maxCommandChainLength(int $value){
    /gamerule maxCommandChainLength $value
}

"""
Max number of entity that can be crammed in a block
"""
def lazy maxEntityCramming(int $value){
    if (Compiler.isJava()){
        /gamerule maxEntityCramming $value
    }
}

"""
Whether mob explosion should drop loot
"""
def lazy mobExplosionDropDecay(bool value){
    if (Compiler.isJava()){
        if (value){
            /gamerule mobExplosionDropDecay true
        } else {
            /gamerule mobExplosionDropDecay false
        }
    }
}

"""
Whether if mob should be able to grief
"""
def lazy mobGriefing(bool value){
    if (value){
        /gamerule mobGriefing true
    } else {
        /gamerule mobGriefing false
    }
}

"""
Whether if player should be able to heal naturally
"""
def lazy naturalRegeneration(bool value){
    if (value){
        /gamerule naturalRegeneration true
    } else {
        /gamerule naturalRegeneration false
    }
}

"""
Percentage of players that need to sleep to skip the night
"""
def lazy playerSleepingPercentage(int $value){
    if (Compiler.isJava()){
        /gamerule playerSleepingPercentage $value
    }
}

"""
Whether if players should be able to pvp
"""
def lazy pvp(bool value){
    if (Compiler.isJava()){
        import cmd.team
        import utils.Process
        Team no_pvp = new Team("no_pvp")
        no_pvp.friendlyFire(!value)
        bool pvp = value
        Process main{
            def main(){
                with(@a){
                    no_pvp.add(@s)
                }
            }
        }
        if (pvp){
            main.start()
        } else {
            main.stop()
        }
    }
    if (Compiler.isBedrock()){
        if (value){
            /gamerule pvp true
        } else {
            /gamerule pvp false
        }
    }
}

"""
Number of random ticks per tick
"""
def lazy randomTickSpeed(int $value){
    /gamerule randomTickSpeed $value
}

"""
Whether if F3 Debug Info should be reduced
"""
def lazy reducedDebugInfo(bool value){
    if (Compiler.isJava()){
        if (value){
            /gamerule reducedDebugInfo true
        } else {
            /gamerule reducedDebugInfo false
        }
    }
}

"""
Whether if command feedback should be sent to player
"""
def lazy sendCommandFeedback(bool value){
    if (value){
        /gamerule sendCommandFeedback true
    } else {
        /gamerule sendCommandFeedback false
    }
}

"""
Whether if world border effect should be shown
"""
def lazy showBorderEffect(bool value){
    if (Compiler.isJava()){
        if (value){
            /gamerule showBorderEffect true
        } else {
            /gamerule showBorderEffect false
        }
    }
}

"""
Whether if coordinates should be shown
"""
def lazy showCoordinates(bool value){
    if (Compiler.isBedrock()){
        if (value){
            /gamerule showCoordinates true
        } else {
            /gamerule showCoordinates false
        }
    }
}

"""
Whether if death messages should be shown
"""
def lazy showDeathMessages(bool value){
    if (value){
        /gamerule showDeathMessages true
    } else {
        /gamerule showDeathMessages false
    }
}

"""
Whether if item tag should be shown
"""
def lazy showTags(bool value){
    if (Compiler.isBedrock()){
        if (value){
            /gamerule showTags true
        } else {
            /gamerule showTags false
        }
    }
}

"""
Max Number of snow layer that can be stacked
"""
def lazy snowAccumulationHeight(int $value){
    if (Compiler.isJava()){
        /gamerule snowAccumulationHeight $value
    }
}

"""
Radius of spawn
"""
def lazy spawnRadius(int $value){
    /gamerule spawnRadius $value
}

"""
Whether if spectator should be able to generate chunks
"""
def lazy spectatorsGenerateChunks(bool value){
    if (Compiler.isJava()){
        if (value){
            /gamerule spectatorsGenerateChunks true
        } else {
            /gamerule spectatorsGenerateChunks false
        }
    }
}

"""
Whether if tnt should explode
"""
def lazy tntExplodes(bool value){
    if (Compiler.isBedrock()){
        if (value){
            /gamerule tntExplodes true
        } else {
            /gamerule tntExplodes false
        }
    }
    if (Compiler.isJava()){
        import utils.Process
        Process main{
            def main(){
                /kill @e[type=tnt,nbt={Fuse:1s}]
            }
        }
        if (!value){
            main.start()
        }
        else{
            main.stop()
        }
    }
}

"""
Whether if tnt should drop loot
"""
def lazy tntExplosionDropDecay(bool value){
    if (Compiler.isJava()){
        if (value){
            /gamerule tntExplosionDropDecay true
        } else {
            /gamerule tntExplosionDropDecay false
        }
    }
}

"""
Whether if universal anger should be enabled
"""
def lazy universalAnger(bool value){
    if (Compiler.isJava()){
        if (value){
            /gamerule universalAnger true
        } else {
            /gamerule universalAnger false
        }
    }
}

"""
Whether if water should convert to water source
"""
def lazy waterSourceConversion(bool value){
    if (Compiler.isJava()){
        if (value){
            /gamerule waterSourceConversion true
        } else {
            /gamerule waterSourceConversion false
        }
    }
}