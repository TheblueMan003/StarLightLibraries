package camera

forgenerate($name, (in_out_sine, in_bounce)){
    def $name(float $time, mcposition $pos){
        /camera @s set minecraft:free ease $time $name pos $pos
    }
    def $name(float $time, mcposition $pos, int $rx, int $ry){
        /camera @s set minecraft:free ease $time $name pos $pos $ry $rx
    }
}