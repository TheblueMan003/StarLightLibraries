import cmd.actionbar as actionbar
import cmd.block as block
if (Compiler.isJava()){
    import cmd.Bossbar
    import cmd.Team
    import cmd.particles as particles
    import cmd.worldborder as worldborder
}
if (Compiler.isBedrock()){
    import cmd.camera as camera
    import cmd.inputpermission as inputpermission
}
import cmd.damage as damage
import cmd.difficulty as difficulty
import cmd.effect as effect
import cmd.entity as entity
import cmd.gamemode as gamemode
import cmd.gamerule as gamerule
import cmd.schedule as schedule
import cmd.score as score
import cmd.sound as sound
import cmd.spawnpoint as spawnpoint
import cmd.spectate as spectate
import cmd.structure as structure
import cmd.tag as tag
import cmd.title as title
import cmd.tp as tp
import cmd.xp as xp