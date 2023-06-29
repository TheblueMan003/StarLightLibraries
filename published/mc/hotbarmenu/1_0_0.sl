package mc.HotbarMenu

import mc.bedrock.Item
import mc.java.input as input
import mc.java.resourcespack.models as models
import mc.inventory as inv
import mc.inventory.Setup
import utils.PProcess

lazy int itemCount = 0
template HotbarMenu{
    Setup setup{
        def assignSlot(int slot, mcobject item){
            forceHotbar(slot, item)
        }
    }
    if (Compiler.isJava()){
        PProcess main{
            def main(){
                input.onClick(){
                    @templates.click()
                }
            }
        }
    }
    def __pass__(){

    }
    def lazy addButton(int slot, string name, string texture, void=>void action){
        if (Compiler.isJava()){
            models.flat("item/hotbar_menu_"+texture, "item/"+texture)
            lazy int index = models.addModel(minecraft:carrot_on_a_stick, "item/hotbar_menu_"+texture)
            Compiler.insert($name, name){
                setup.assignSlot(slot, minecraft:carrot_on_a_stick{CustomModelData: index, display:{Name:"[{\"text\":\"$name\",\"italic\":false}]"}})
            }
            def @templates.click(){
                Compiler.insert($name, name){
                    if (inventory.isHoldingItem(minecraft:carrot_on_a_stick{CustomModelData: index, display:{Name:"[{\"text\":\"$name\",\"italic\":false}]"}})){
                        action()
                    }
                }
            }
        }
        if (Compiler.isBedrock()){
            lazy var id = "hotbar_menu_" + itemCount
            Item item{
                setName(id)
                setNamespace("sl")
                setIcon("item/" + texture)
                setDisplayName(name)
                item.onClick(action)
                item.onHold(__pass__)
                item.onRelease(__pass__)
            }
            setup.assignSlot(slot, "sl:"+id)
        }
    }

    def start(){
        setup.start()
        if (Compiler.isJava()){
            main.start()
        }
    }
    def stop(){
        setup.stop()
        if (Compiler.isJava()){
            main.stop()
        }
    }
}