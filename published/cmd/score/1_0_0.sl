package cmd.score

"""
Sum up the value of the scoreboard of the entity in e
"""
lazy int sum(entity e, string score){
    int c = 0
    with(e){
        c += score
    }
    return c
}

"""
Get the min value of the scoreboard of the entity in e
"""
lazy int min(entity e, string score){
    int c = 0
    with(e){
        if(score < c){
            c = score
        }
    }
    return c
}

"""
Get the max value of the scoreboard of the entity in e
"""
lazy int max(entity e, string score){
    int c = 0
    with(e){
        if(score > c){
            c = score
        }
    }
    return c
}

"""
Get the average value of the scoreboard of the entity in e
"""
lazy int avg(entity e, string score){
    int c = 0
    int c2 = 0
    with(e){
        c += score
        c2 ++
    }
    return c / c2
}

"""
Show the scoreboard on the list
"""
lazy void showList(int score, rawjson display){
    lazy val name = Compiler.getObjective(score)
    Compiler.insert(($score, $display), (name, display)){
        if (Compiler.isJava()){
            /scoreboard objectives setdisplay list $name
            /scoreboard objectives modify $name displayname $display
        }
        if (Compiler.isBedrock()){
            /scoreboard objectives setdisplay list $name $display
        }
    }
}

"""
Show the scoreboard on the sidebar
"""
lazy void showSidebar(int score, rawjson display){
    lazy val name = Compiler.getObjective(score)
    Compiler.insert(($score, $display), (name, display)){
        if (Compiler.isJava()){
            /scoreboard objectives setdisplay sidebar $name
            /scoreboard objectives modify $name displayname $display
        }
        if (Compiler.isBedrock()){
            /scoreboard objectives setdisplay sidebar $name $display
        }
    }
}

"""
Show the scoreboard on the belowname
"""
lazy void showBelowname(int score, rawjson display){
    lazy val name = Compiler.getObjective(score)
    Compiler.insert(($score, $display), (name, display)){
        if (Compiler.isJava()){
            /scoreboard objectives setdisplay belowname $name
            /scoreboard objectives modify $name displayname $display
        }
        if (Compiler.isBedrock()){
            /scoreboard objectives setdisplay belowname $name $display
        }
    }
}

"""
Show the scoreboard on the sidebar of team of color `color`
"""
lazy void showTeamSidebar(int score, string color, rawjson display){
    lazy val name = Compiler.getObjective(score)
    Compiler.insert(($score, $color, $display), (name, color, display)){
        if (Compiler.isJava()){
            /scoreboard objectives setdisplay sidebar.team.$color $name
            /scoreboard objectives modify $name displayname $display
        }
    }
}

"""
Hide the scoreboard on the list
"""
lazy void hideList(){
    /scoreboard objectives setdisplay list
}

"""
Hide the scoreboard on the sidebar
"""
lazy void hideSidebar(){
    /scoreboard objectives setdisplay sidebar
}

"""
Hide the scoreboard on the belowname
"""
lazy void hideBelowname(){
    /scoreboard objectives setdisplay belowname
}

"""
Hide the scoreboard on the sidebar of team of color `color`
"""
lazy void hideTeamSidebar(string $color){
    /scoreboard objectives setdisplay sidebar.team.$color
}