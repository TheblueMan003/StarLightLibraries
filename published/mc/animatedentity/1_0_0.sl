package mc.AnimatedEntity

import mc.Entity

class AnimatedEntity extends Entity{
    void=>void animationClear
    def lazy playAnimation(string animation){
        lazy var name = Compiler.getBlockbenchEntityName()
        animationClear()
        Compiler.insert(($name, $animation), (name, animation)){
            /function animated_java:$name/animations/$animation/play
        }
        animationClear = () => {
            Compiler.insert(($name, $animation), (name, animation)){
                /function animated_java:$name/animations/$animation/stop
            }
        }
    }
    def lazy stopAnimation(){
        animationClear()
    }
    def lazy remove(){
        lazy var name = Compiler.getBlockbenchEntityName()
        Compiler.insert(($name), (name)){
            /function animated_java:$name/remove/this
        }
    }
}