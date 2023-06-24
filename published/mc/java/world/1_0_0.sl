package mc.java.world

predicate light(int light){
    "condition": "minecraft:location_check",
    "predicate": {
        "light": {
            "light": light
        }
    }
}
predicate light(int min, int max){
    "condition": "minecraft:location_check",
    "predicate": {
        "light": {
            "light": {
                "min": min,
                "max": max
            }
        }
    }
}
predicate lightRange(int min, int max){
    "condition": "minecraft:location_check",
    "predicate": {
        "light": {
            "light": {
                "min": min,
                "max": max
            }
        }
    }
}
predicate biome(mcobject biome){
    "condition": "minecraft:location_check",
    "predicate": {
        "biome": biome
    }
}

predicate structure(mcobject structure){
    "condition": "minecraft:location_check",
    "predicate": {
        "feature": structure
    }
}

predicate isRaining(){
    "condition": "minecraft:weather_check",
    "raining": true
}

predicate isThundering(){
    "condition": "minecraft:weather_check",
    "thundering": true
}

predicate time(int time){
    "condition": "minecraft:time_check",
    "value": time,
    "period": 24000
}

predicate time(int min, int max){
    "condition": "minecraft:time_check",
    "value": {
        "min": min,
        "max": max
    },
    "period": 24000
}

predicate isDay(){
    "condition": "minecraft:time_check",
    "value": {
        "min": 0,
        "max": 12000
    },
    "period": 24000
}

predicate isNight(){
    "condition": "minecraft:time_check",
    "value": {
        "min": 12000,
        "max": 14000
    },
    "period": 24000
}

predicate globalTime(int time){
    "condition": "minecraft:time_check",
    "value": time
}

predicate globalTime(int min, int max){
    "condition": "minecraft:time_check",
    "value": {
        "min": min,
        "max": max
    }
}