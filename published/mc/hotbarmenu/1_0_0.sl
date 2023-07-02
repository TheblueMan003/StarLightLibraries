package mc.HotbarMenu

import mc.bedrock.Item
import mc.java.input as input
import mc.java.resourcespack.models as models
import mc.inventory as inv
import mc.inventory.Setup
import utils.PProcess

lazy int itemCount = 0
template HotbarMenu extends Setup{
    def lazy addButton(int slot, string name, string texture, void=>void action){
        if (Compiler.isJava()){
            lazy int index = models.add(minecraft:carrot_on_a_stick, models.flat("hotbar_menu_"+texture, "item/"+texture))
            Compiler.insert($name, name){
                forceHotbar(slot, minecraft:carrot_on_a_stick{CustomModelData: index, display:{Name:"[{\"text\":\"$name\",\"italic\":false}]"}})
            }
            def @templates.click(){
                Compiler.insert(($name, $index), (name, index)){
                    if (inventory.isHoldingItem(minecraft:carrot_on_a_stick, 1, "{CustomModelData: $index}")){
                        action()
                    }
                }
            }
        }
        if (Compiler.isBedrock()){
            lazy var id = "hotbar_menu_" + itemCount
            def f(){
                action()
            }
            Item item{
                setName(id)
                setNamespace("sl")
                setIcon("item/" + texture)
                item.onClick(f)
                item.onHold(__pass__)
                item.onRelease(__pass__)
            }
            forceHotbar(slot, "sl:"+id)
        }
    }
    
    if (Compiler.isJava()){
        PProcess main{
            def [compile.order=99999] main(){
                input.onClick(){
                    @templates.parent.click()
                }
            }
        }
    }
    def __pass__(){

    }

    def start(){
        add()
        if (Compiler.isJava()){
            main.start()
        }
    }
    def stop(){
        remove()
        if (Compiler.isJava()){
            main.stop()
        }
    }
}
