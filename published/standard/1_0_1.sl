package standard

"""
Show text to all players
"""
def lazy print(rawjson $text){
    /tellraw @a $text
}

"""
Show text to the executing player
"""
def lazy tell(rawjson $text){
    /tellraw @s $text
}

"""
Show text to specific player(s)
"""
def lazy tell(entity $selector,rawjson $text){
    /tellraw $selector $text
}

"""
Prints debug information if the compiler is in debug mode
"""
def lazy debug(rawjson text){
    if (Compiler.isDebug()){
        lazy rawjson prefix = (("[DEBUG]", "purple"),(" "))
        prefix += text
        standard.print(prefix)
    }
}

"""
Returns the version of the project as a tuple of three integers: major, minor, and patch
"""
def (int,int,int) version(){
    return (
        Compiler.getProjectVersionMajor(), 
        Compiler.getProjectVersionMinor(), 
        Compiler.getProjectVersionPatch())
}

package _

"""
Prints the version information of the project
"""
public void printVersion(){
    lazy string name = Compiler.getProjectFullName()
    lazy string author = Compiler.getProjectAuthor()
    lazy string type = Compiler.getProjectVersionType()
    lazy int major = Compiler.getProjectVersionMajor()
    lazy int minor = Compiler.getProjectVersionMinor()
    lazy int patch = Compiler.getProjectVersionPatch()

    lazy int cmajor = Compiler.getCompilerVersionMajor()
    lazy int cminor = Compiler.getCompilerVersionMinor()
    lazy int cpatch = Compiler.getCompilerVersionPatch()
    
    if (major < 1){
        standard.print("============[",name,"]============")
        standard.print("Made by: ",author)
        standard.print("Compiled with: Star Light v", cmajor,".",cminor,".",cpatch)
        standard.print("Project Version: ",type," ", 1,".",minor,".",patch)
        standard.print("==================================")
    }
    else{
        standard.print("============[",name,"]============")
        standard.print("Made by: ",author)
        standard.print("Compiled with: Star Light v", cmajor,".",cminor,".",cpatch)
        standard.print("Project Version: ",type," ", major,".",minor,".",patch)
        standard.print("==================================")
    }
}