package utils.nbt

import mc.java.nbt
import math

"""
Clamps the entity's position to a certain area.
sx, sy, sz: The starting position of the area.
ex, ey, ez: The ending position of the area.
If the entity is outside of the area, they will be teleported to the closest point on the edge of the area.
If the entity is inside of the area, nothing will happen.
"""
def lazy clampPosition(float sx, float sy, float sz, float ex, float ey, float ez){
    float x = nbt.x
    float y = nbt.y
    float z = nbt.z

    x = math.clamp(x, sx, ex)
    y = math.clamp(y, sy, ey)
    z = math.clamp(z, sz, ez)

    nbt.setNBT(x, "Pos[0]", "double", 0.001)
    nbt.setNBT(y, "Pos[1]", "double", 0.001)
    nbt.setNBT(z, "Pos[2]", "double", 0.001)
}