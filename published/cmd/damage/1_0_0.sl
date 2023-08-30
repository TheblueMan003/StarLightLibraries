package cmd.damage

"""
Deals damage to an entity
"""
def lazy deal(int $number){
    if (Compiler.isJava()){
        /damage @s $number
    }
    if (Compiler.isBedrock()){
        /damage @s $number
    }
}

"""
Deals damage to an entity
"""
def lazy deal(entity sel, int $number){
    lazy var sel2 = Compiler.getEntitySelector(sel)
    Compiler.insert($sel, sel2){
        if (Compiler.isJava()){
            /damage $sel $number
        }
        if (Compiler.isBedrock()){
            /damage $sel $number
        }
    }
}

"""
Deals damage to an entity with a specific type
"""
def lazy deal(entity sel, int $number, mcobject $type){
    lazy var sel2 = Compiler.getEntitySelector(sel)
    Compiler.insert($sel, sel2){
        if (Compiler.isJava()){
            /damage $sel $number $type
        }
        if (Compiler.isBedrock()){
            /damage $sel $number $type
        }
    }
}

"""
Deals damage to an entity with a specific position source
"""
def lazy deal(entity sel, int $number, mcobject $type, mcposition $source){
    lazy var sel2 = Compiler.getEntitySelector(sel)
    Compiler.insert($sel, sel2){
        if (Compiler.isJava()){
            /damage $sel $number $type $source
        }
        if (Compiler.isBedrock()){
            /damage $sel $number $type
        }
    }
}

"""
Deals damage to an entity with a specific entity source
"""
def lazy deal(entity sel, int $number, mcobject $type, entity source){
    lazy var sel2 = Compiler.getEntitySelector(sel)
    lazy var source2 = Compiler.getEntitySelector(source)
    Compiler.insert(($sel, $source), (sel2, source2)){
        if (Compiler.isJava()){
            /damage $sel $number $type $source $bypass
        }
        if (Compiler.isBedrock()){
            /damage $sel $number $type entity $bypass
        }
    }
}

"""
Deals damage to an entity with a specific entity source
"""
def lazy deal(entity sel, int $number, entity source){
    lazy var sel2 = Compiler.getEntitySelector(sel)
    lazy var source2 = Compiler.getEntitySelector(source)
    Compiler.insert(($sel, $source), (sel2, source2)){
        if (Compiler.isJava()){
            /damage $sel $number minecraft:mob_attack $source
        }
        if (Compiler.isBedrock()){
            /damage $sel $number entity-attack entity $source
        }
    }
}