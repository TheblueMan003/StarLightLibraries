package cmd.fog

def lazy push(string $fogname){
    /fog @a push zedafox:$fogname $fogname
}
def lazy push(mcobject $name, string $fogname){
    /fog $name push zedafox:$fogname $fogname
}

def lazy remove(string $fogname){
    /fog @a remove $fogname
}
def lazy remove(mcobject $name, string $fogname){
    /fog $name remove $fogname
}

def lazy pop(string $fogname){
    /fog @a pop $fogname
}
def lazy pop(mcobject $name, string $fogname){
    /fog $name pop $fogname
}