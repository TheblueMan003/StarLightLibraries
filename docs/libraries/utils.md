## lazy function forCube
### Arguments:
- sizeX (`int`)
- sizeY (`int`)
- sizeZ (`int`)
- fct (`int, int, int=>void`)
### Return:
- void


Execute a function for each block in a cube of size sizeX*sizeY*sizeZ and provide the coordinates of the block (relative to start) to the function

## lazy function forArea
### Arguments:
- sizeX (`int`)
- sizeY (`int`)
- sizeZ (`int`)
- fct (`void=>void`)
### Return:
- void


Execute a function for each block in a cube of size sizeX*sizeY*sizeZ

## lazy function observe
### Arguments:
- value (`int`)
- fct (`void=>void`)
### Return:
- void


Call fct if the value of value has changed since the last call

## lazy function runOnce
### Arguments:
- fct (`void=>void`)
### Return:
- void


Call fct once until reset is called

## lazy function runOnce
### Arguments:
- fct (`void=>void`)
- repeated (`void=>void`)
### Return:
- void


Call fct once per player and then call repeated until reset is called

## lazy function runOncePerPlayer
### Arguments:
- fct (`void=>void`)
### Return:
- void


Call fct once per player until reset is called

## lazy function runOncePerPlayer
### Arguments:
- fct (`void=>void`)
- repeated (`void=>void`)
### Return:
- void


Call fct once per player and then call repeated until reset is called


