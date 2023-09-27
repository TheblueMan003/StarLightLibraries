## lazy function clampPosition
### Arguments:
- sx (`float`)
- sy (`float`)
- sz (`float`)
- ex (`float`)
- ey (`float`)
- ez (`float`)
### Return:
- void


Clamps the entity's position to a certain area.sx, sy, sz: The starting position of the area.ex, ey, ez: The ending position of the area.If the entity is outside of the area, they will be teleported to the closest point on the edge of the area.If the entity is inside of the area, nothing will happen.


