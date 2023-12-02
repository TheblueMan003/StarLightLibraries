package cmd.tag

def macro add(string tag){
    /tag @s add $(tag)
}

def macro add(entity selector, string tag){
    with(selector){
        /tag @s add $(tag)
    }
}


def macro remove(string tag){
    /tag @s remove $(tag)
}
def macro remove(entity selector, string tag){
    with(selector){
        /tag @s remove $(tag)
    }
}


def macro unique(string tag){
    /tag @e[tag=$(tag)] remove $(tag)
    /tag @s add $(tag)
}
def macro unique(entity selector, string tag){
    /tag @e[tag=$(tag)] remove $(tag)
    with(selector){
        /tag @s add $(tag)
    }
}

def lazy bool has(string tag){
    return @s[tag=tag]
}

def lazy bool has(entity selector, string $tag){
    lazy val sel = Compiler.mergeSelector(selector, @e[tag=$tag])
    return sel
}