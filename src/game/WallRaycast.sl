package game.WallRaycast

import mc.Click
import utils.PProcess
import math.raycast as rc
import utils.blocktags as bt

template WallRaycast{
    lazy var air = #bt.air
    def lazy setStopBlock(mcobject block){
        air = block
    }
    Click click{
        def onClick(){
            rc.shoot(100, 0.5, !block(air)){
                super.onClick()
            }
        }
        def onHold(){
            rc.shoot(100, 0.5, !block(air)){
                super.onHold()
            }
        }
        def onRelease(){
            rc.shoot(100, 0.5, !block(air)){
                super.onRelease()
            }
        }
    }
    PProcess handler{
        def main(){
            rc.shoot(100, 0.5, !block(air)){
                main()
            }
        }
    }
    def start(){
        click.start()
        handler.start()
    }
    def stop(){
        click.stop()
        handler.stop()
    }
    def virtual onClick(){}
    def virtual onHold(){}
    def virtual onRelease(){}
    def virtual main(){}
}