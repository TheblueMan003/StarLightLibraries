## ` lazy void forCube(int sizeX, int sizeY, int sizeZ, int, int, int=>void fct)`
Execute a function for each block in a cube of size sizeX*sizeY*sizeZ and provide the coordinates of the block (relative to start) to the function

## ` lazy void forArea(int sizeX, int sizeY, int sizeZ, void=>void fct)`
Execute a function for each block in a cube of size sizeX*sizeY*sizeZ

## ` lazy void observe(int value, void=>void fct)`
Call fct if the value of value has changed since the last call

## ` lazy void runOnce(void=>void fct)`
Call fct once until reset is called

## ` lazy void runOnce(void=>void fct, void=>void repeated)`
Call fct once per player and then call repeated until reset is called

## ` lazy void runOncePerPlayer(void=>void fct)`
Call fct once per player until reset is called

## ` lazy void runOncePerPlayer(void=>void fct, void=>void repeated)`
Call fct once per player and then call repeated until reset is called


