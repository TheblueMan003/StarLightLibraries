package game.Level

import cmd.entity as entity

lazy json example = {
    "name": "level1",
    "objects": [
        {
            "type": "player",
            "position": [0, 0, 0],
            "rotation": [0, 0],
            "scores": {
                "score1": 0,
                "score2": 0
            },
            "functions":[
                "test"
            ],
            "tags": [
                "test"
            ],
            "events": [
                "skin"
            ],
            "destroy": "test"
        }
    ]
}

template Level{
    scoreboard void=>void destroyer
    entity objects
    public lazy void summonJson(json value){
        Compiler.insert(($x $y $z), (value["position"][0], value["position"][1], value["position"][2])){
            at($x $y $z){
                objects += entity.summon(value["type"]){
                    if ("scores" in value){
                        foreach(key in value["scores"]){
                            Compiler.insert($key, key){
                                key = value["scores"][key];
                            }
                        }
                    }
                    if ("functions" in value){
                        foreach(function in value["functions"]){
                            Compiler.insert($function, function){
                                $function();
                            }
                        }
                    }
                    if ("tags" in value){
                        foreach(tag in value["tags"]){
                            Compiler.insert($tag, tag){
                                /tag add @s $tag
                            }
                        }
                    }
                    if ("rotation" in value){
                        Compiler.insert(($x $y), (value["rotation"][0], value["rotation"][1])){
                            /tp @s ~ ~ ~ $x $y
                        }
                    }
                    if ("events" in value){
                        foreach(event in value["events"]){
                            Compiler.insert($event, event){
                                /event entity @s $event
                            }
                        }
                    }
                    if ("destroy" in value){
                        Compiler.insert($destroy, value["destroy"]){
                            destroyer = $destroy
                        }
                    }
                }
            }
        }
    }
    public lazy void summonAllJson(json value){
        foreach(object in value["objects"]){
            summon(object)
        }
    }
    if (Compiler.isJava()){
        lazy entity summon(mcobject name, json data, void=>void fct){
            entity tmp = entity.summon(name, data){
                objects += @s
                fct()
            }
            return tmp
        }
        lazy entity summon(mcobject name, json data = {}){
            entity tmp = entity.summon(name, data)
            objects += tmp
            return tmp
        }
        lazy entity summon(mcobject name, void=>void fct){
            entity tmp = entity.summon(name){
                objects += @s
                fct()
            }
            return tmp
        }
    }
    if (Compiler.isBedrock()){
        lazy entity summon(mcobject name, string skin, void=>void fct){
            entity tmp = entity.summon(name, skin){
                objects += @s
                fct()
            }
            return tmp
        }
        lazy entity summon(mcobject name, void=>void fct){
            entity tmp = entity.summon(name){
                objects += @s
                fct()
            }
            return tmp
        }
        lazy entity summon(mcobject name, string skin){
            entity tmp = entity.summon(name, skin)
            objects += tmp
            return tmp
        }
        lazy entity summon(mcobject name){
            entity tmp = entity.summon(name)
            objects += tmp
            return tmp
        }
    }
    public void onStart(){
    }
    public void onStop(){
    }
    public void start(){
        onStart()
    }
    public void stop(){
        onStop()
        with(objects,true){
            destroyer()
            entity.despawn()
        }
    }
}