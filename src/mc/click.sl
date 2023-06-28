package mc.Click

import mc.java.event as event
import mc.java.resourcespack.models as models
import utils.Process as Process
import mc.inventory.Setup
import mc.bedrock.Item

template Click {
    def onClick(){

    }
    def onHold(){

    }
    def onRelease(){

    }
    private void __onClick__(){
        onClick()
    }
    private void __onHold__(){
        onHold()
    }
    private void __onRelease__(){
        onRelease()
    }

    Item item{
        setName("click_detector")
        setNamespace("sl")
        setIcon("empty")
        item.onClick(__onClick__)
        item.onHold(__onHold__)
        item.onRelease(__onRelease__)
    }

    Setup setup{
        if (Compiler.isJava()){
            [java_rp=true] jsonfile models.item.shield_empty{
                "credit": "Made with Blockbench",
                "texture_size": [32, 32],
                "textures": {
                    "0": "item/iron_pickaxe",
                    "particle": "item/iron_pickaxe"
                },
                "elements": []
            }
            models.add(minecraft:shield, "item/shield_empty", 1)
            forceHotbar(minecraft:shield{CustomModelData:1,display:{Name:"[{\"text\":\"\",\"italic\":false}]"}})
        }
        if (Compiler.isBedrock()){

        }
    }

    def start(){
        setup.add()
        if (Compiler.isJava()){
            main.start()
        }
    }

    def stop(){
        setup.remove()
        if (Compiler.isJava()){
            main.stop()
        }
    }

    if (Compiler.isJava()){
        scoreboard int wasClicked
        event.onUsingItem(minecraft:shield){
            if (wasClicked <= 0){
                __onClick__()
            }
            wasClicked = 2
            __onHold__()
        }
        Process main{
            void main(){
                with(@a, true){
                    wasClicked--
                    if (wasClicked == 0){
                        __onRelease__()
                    }
                }
            }
        }
    }
}