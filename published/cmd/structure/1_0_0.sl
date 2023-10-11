package cmd.structure

def macro load(string name){
    if (Compiler.isJava()){
        /place template $(name)
    }
    if (Compiler.isBedrock()){
        /structure load $(name) ~ ~ ~
    }
}

def macro save(string name, mcposition pos1, mcposition pos2){
    if (Compiler.isBedrock()){
        /structure save $(name) $(pos1) $(pos2)
    }
}
