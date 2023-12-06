package runtime.executer

void runCommands(List<string> cmds){
    for (cmd in cmds){
        runCommand(cmd)
    }
}

macro void runCommand(string cmd){
    /$(cmd)
}