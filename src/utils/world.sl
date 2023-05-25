package utils.world

def lazy no_drop(){
    def @tick handler(){
        with(@e[type=item],true){
            /tp @s @p
            /data merge entity @s {PickupDelay:0s}
        }
    }
}
def lazy kill_drop(){
    def @tick handler(){
        /kill @e[type=item]
    }
}