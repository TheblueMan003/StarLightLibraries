package camera

forgenerate($name, (linear, spring, in_back, in_bounce, in_circ, in_cubic, in_elastic, in_expo, in_quad, in_quart, in_quint, in_sine, out_back, out_bounce, out_circ, out_cubic, out_elastic, out_expo, out_quad, out_quart, out_quint, out_sine, in_out_back, in_out_bounce, in_out_circ, in_out_cubic, in_out_elastic, in_out_expo, in_out_quad, in_out_quart, in_out_quint_sine)){
    def lazy $name(float $time, mcposition $pos){
        /camera @s set minecraft:free ease $time $name pos $pos
    }
    def lazy $name(float $time, mcposition $pos, int $rx, int $ry){
        /camera @s set minecraft:free ease $time $name pos $pos rot $ry $rx
    }
    def lazy $name(float $time, mcposition $pos, mcposition $target){
        /camera @s set minecraft:free ease $time $name pos $pos facing $target
    }
}

def lazy fade(float $fadein, float $hold, float $fadeout, int red = 0, int green = 0, int blue = 0){
    lazy val r = red / 255
    lazy val g = green / 255
    lazy val b = blue / 255
    Compiler.insert($r, r){
        Compiler.insert($g, g){
            Compiler.insert($b, b){
                /camera @s fade time $fadein $hold $fadeout color $r $g $b
            }
        }
    }
}