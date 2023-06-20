package mc.blocktag

import cmd.block as b

"""
Get the index of the current block in the tag
"""
public lazy int getBlockIndex(mcobject tag) {
    int ret = -1
    foreach(block in tag){
        if (block(block)){
            ret = block.index
        }
    }
    return ret
}


"""
Set the current block to the index in the tag
"""
public lazy void setBlock(mcobject tag, int index) {
    foreach(block in tag){
        if (block.index == index){
            b.set(block)
        }
    }
}