package maps.theblueman003.Menu

import mc.Entity
import cmd.ride as ride
import utils.PProcess
import cmd.java.data as data
import cmd.gamemode as gm
from mc.sprite import _
import mc.java.display.DisplayBlock
import mc.java.display.DisplayText
import mc.wasd as wasd
import mc.Click as Click
import cmd.sound as sound
import maps.theblueman003.screen as screen
import game

def lazy makeCharacterDoll(string name){
    if (Compiler.isJava()){
        lazy var file = "lib/theblueman_screen/java_resourcepack/assets/minecraft/textures/item/credit_character_"+name+".png"
        lazy var exists = File.exists(file)
        if (exists){
        }
        else{
            lazy var cmd = "python lib/theblueman_screen/java_resourcepack/assets/minecraft/textures/item/credit_character_generator.py "+name
            Compiler.print("Downloading character: "+name)
            File.run(cmd)
        }
    }
}
Template Menu<location>{
    lazy string title_texture = "title"
    lazy string control_texture = "menu_control"
    lazy string button_texture = "button"
    lazy string button_selected_texture = "button_selected"
    lazy mcobject room_block = minecraft:black_concrete

    def lazy setTitleTexture(string texture){
        title_texture = texture
    }
    def lazy setControlTexture(string texture){
        control_texture = texture
    }
    def lazy setButtonTexture(string texture){
        button_texture = texture
    }
    def lazy setButtonSelectedTexture(string texture){
        button_selected_texture = texture
    }
    def lazy setRoomBlock(mcobject block){
        room_block = block
    }

    class GameTitle extends Sprite{
        def this(){
            setTexture(addTextureVertical(title_texture))
            setScale(5,5,5)
        }
    }
    class Controlls extends Sprite{
        def this(){
            setTexture(addTextureVertical(control_texture))
            setScale(2,2,2)
        }
    }
    class Version extends DisplayText{
        def this(){
            setScale(0.5,0.5,0.5)
            setBackgroundColor(0)
        }
        def update(){
            setText("v"+Compiler.getProjectVersionMajor()+"." +Compiler.getProjectVersionMinor() + "." + Compiler.getProjectVersionPatch())
        }
    }
    class Minecart extends Entity with minecraft:item_display for mcjava{
        def this(){
            data.set({NoGravity:1b})
        }
    }
    class Room extends DisplayBlock{
        def this(){
            setScale(51,51,51)
            setBlock(room_block)
            setTranslation(-25.5, -25.5, -25.5)
        }
    }
    class Button extends Sprite{
        DisplayText name
        void=>void action
        int index
        int state
        def this(string text, void=>void func){
            setTexture(addTextureVertical(button_texture))
            setScale(2,0.5,1)
            at(~~-0.15~0.02)name = new DisplayText(text)
            name.setBackgroundColor(0)
            action = func
            index = button_count
            button_count++
        }
        def virtual select(){
            setTexture(addTextureVertical(button_selected_texture))
        }
        def virtual unselect(){
            setTexture(addTextureVertical(button_texture))
        }
        def virtual grow(){
            interpolateScale(10, 2.5,0.75,1)
            name.interpolateScale(10, 1.25,1.25,1.25)
        }
        def virtual shrink(){
            interpolateScale(5, 2,0.5,1)
            name.interpolateScale(5, 1,1,1)
        }
        def update(){
            if (index == button_selected % button_count){
                if (state == 0){
                    grow()
                    state = 1
                    with(@a,true)sound.play(minecraft:ui.button.click)
                }
                select()
            }
            else{
                unselect()
                if (state == 1){
                    shrink()
                    state = 0
                }
            }
        }
        def remove(){
            name.run{
                ./kill
            }
            ./kill
        }
    }
    class CreditButton extends Button{
        void=>void selectImage
        void=>void unselectImage
        def lazy this(string texture, string text, void=>void func){
            makeCharacterDoll(texture)
            setTexture(addTextureVertical("credit_character_"+texture))
            selectImage = () => {
                setTexture(addTextureVertical("credit_character_"+texture+"_selected"))
            }
            unselectImage = () => {
                setTexture(addTextureVertical("credit_character_"+texture))
            }
            setScale(1,1,1)
            at(~~-0.75~0.02)name = new DisplayText(text)
            name.setBackgroundColor(0)
            action = func
            index = button_count
            button_count++
        }
        def override select(){
            selectImage()
        }
        def override unselect(){
            unselectImage()
        }
        def override grow(){
            interpolateScale(10, 1.25,1.25,1.25)
            name.interpolateScale(10, 1.25,1.25,1.25)
        }
        def override shrink(){
            interpolateScale(5, 1,1,1)
            name.interpolateScale(5, 1,1,1)
        }
    }

    int button_count
    int button_selected
    scoreboard Minecart minecart

    PProcess main{
        float t
        Room room
        GameTitle title
        Version version
        Controlls controlls
        def main(){
            if (gm.isAdventure()){
                with(player.Background)update(t)
                t+=0.1

                [nbt="Rotation[0]"] scoreboard json rotx
                [nbt="Rotation[1]"] scoreboard json roty

                int rx = rotx
                int ry = roty

                if (rx != 180 && rx != -180){
                    /tp @s ~ ~ ~ -180 0
                }
                if (ry != 0){
                    /tp @s ~ ~ ~ -180 0
                }

                Minecart m = minecart
                m.run{
                    /tp @s 1000 100 -1000
                }
                ride.ride(m)

                with(Button)update()
                version.update()
            }
        }
        def onJoin(){
            minecart = new Minecart()
            room = new Room()
        }
        def onLeave(){
            ride.dismount()
            minecart.run{
                ./kill
            }
            room.run{
                ./kill
            }
            title.run{
                ./kill
            }
            version.run{
                ./kill
            }
            controlls.run{
                ./kill
            }
            with(Button)remove()
        }
        def closeHint(){
            controlls.run{
                ./kill
            }
        }
        def showHint(){
            at(~-4~-2~)controlls = new Controlls()
        }
        def init(){
            title = new GameTitle()
            at(~2~-0.5~0.02)version = new Version()
            at(~-4~-2~)controlls = new Controlls()
        }
        def onStop(){
            with(player.Background)./kill
            detect.stop()
            click.stop()
        }
    }
    wasd.WASD detect{
        def onPressW(){
            button_selected--
        }
        def onPressS(){
            button_selected++
        }
        def onPressA(){
            button_selected--
        }
        def onPressD(){
            button_selected++
        }
    }
    Click click{
        def onRelease(){
            with(Button){
                if (index == button_selected % button_count){
                    action()
                }
            }
        }
    }
    def initMenu(void=>void func){
        button_count = 0
        button_selected = 0
        with(Button)remove()
        at(position)at(~~~-4){
            func()
        }
    }
    def openMain(){
        initMenu{
            mainMenu()
        }
    }

    def launch(){
        with(@a){
            at(position)./tp @s ~ ~ ~
            gm.adventure()
        }
        while(!loaded(position)){
            sleep 1
        }
        with(@p,true){
            main.start()
            detect.start()
            click.start()
            at({~,103,~-4})main.init()
            openMain()
        }
    }

    def abstract mainMenu(){

    }
}