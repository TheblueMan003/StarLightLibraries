# template Cutscene<>
Template for cutscene

## lazy function start
### Arguments:
- e (`entity`)
### Return:
- void


Start the cutscene for the entities `e`

## function init
### Arguments:

### Return:
- void


Init the cutscene

## function nextSegment
### Arguments:

### Return:
- void


Start the next segment of the cutscene

## lazy function event
### Arguments:
- fct (`void=>void`)
### Return:
- void


Call the function `fct` when this segment is reach and goes directly to the next

## lazy function waitFor
### Arguments:
- fct (`int=>bool`)
### Return:
- void


Wait for the function `fct` to return true then goes to the next

## lazy function waitFor
### Arguments:
- target (`mcposition`)
- fct (`int=>bool`)
### Return:
- void


Wait for the function `fct` to return true then goes to the next

## lazy function waitFor
### Arguments:
- position (`mcposition`)
- target (`mcposition`)
- fct (`int=>bool`)
### Return:
- void


Wait for the function `fct` to return true then goes to the next

## lazy function waitTime
### Arguments:
- time (`int`)
- fct (`int=>void`)
### Return:
- void


Wait for `time` ticks

## lazy function waitTime
### Arguments:
- time (`int`)
- target (`mcposition`)
- fct (`int=>void`)
### Return:
- void


Wait for `time` ticks

## lazy function waitTime
### Arguments:
- time (`int`)
- position (`mcposition`)
- target (`mcposition`)
- fct (`int=>void`)
### Return:
- void


Wait for `time` ticks

## lazy function pan
### Arguments:
- speed (`float`)
- pos1 (`mcposition`)
- pos2 (`mcposition`)
- target (`mcposition`)
- whileActive (`int=>void`)
### Return:
- void


Move a fictive entity from `pos1` to `pos2`. The camera is located at `target` and look at the entity.

## lazy function pan
### Arguments:
- speed (`float`)
- pos2 (`mcposition`)
- target (`mcposition`)
- whileActive (`int=>void`)
### Return:
- void


Move a fictive entity from current camera pos to `pos2`. The camera is located at `target` and look at the entity.

## lazy function track
### Arguments:
- speed (`float`)
- pos1 (`mcposition`)
- pos2 (`mcposition`)
- delta (`mcposition`)
- whileActive (`int=>void`)
### Return:
- void


Follow a fictive entity from `pos1` to `pos2` shifted by `delta`

## lazy function track
### Arguments:
- speed (`float`)
- pos2 (`mcposition`)
- delta (`mcposition`)
- whileActive (`int=>void`)
### Return:
- void


Follow a fictive entity from current camera pos to `pos2` shifted by `delta`

## lazy function linear
### Arguments:
- speed (`float`)
- pos1 (`mcposition`)
- pos2 (`mcposition`)
- target (`mcposition`)
- whileActive (`int=>void`)
### Return:
- void


Move the camera from `pos1` to `pos2` while facing `target`

## lazy function linear
### Arguments:
- speed (`float`)
- pos2 (`mcposition`)
- target (`mcposition`)
- whileActive (`int=>void`)
### Return:
- void


Move the camera from current camera pos to `pos2` while facing `target`

## lazy function group
### Arguments:
- fct (`void=>void`)
### Return:
- void


Group multiple instruction into one segment.

## lazy function delta
### Arguments:
- $pos (`mcposition`)
- time (`int`)
- whileActive (`void=>void`)
### Return:
- void


Constant delta movement

## lazy function delta
### Arguments:
- $start (`mcposition`)
- $pos (`mcposition`)
- time (`int`)
- whileActive (`void=>void`)
### Return:
- void


Constant delta movement

## lazy function deltaLooking
### Arguments:
- $pos (`mcposition`)
- target (`mcposition`)
- time (`int`)
- whileActive (`void=>void`)
### Return:
- void


Constant delta movement Looking at `target`

## lazy function deltaLooking
### Arguments:
- $start (`mcposition`)
- $pos (`mcposition`)
- target (`mcposition`)
- time (`int`)
- whileActive (`void=>void`)
### Return:
- void


Constant delta movement Looking at `target`

## lazy function deltaAngle
### Arguments:
- $pos (`mcposition`)
- $u (`float`)
- $v (`float`)
- time (`int`)
- whileActive (`void=>void`)
### Return:
- void


Constant delta movement With angle `u` and `v`

## lazy function deltaAngle
### Arguments:
- $start (`mcposition`)
- $pos (`mcposition`)
- $u (`float`)
- $v (`float`)
- time (`int`)
- whileActive (`void=>void`)
### Return:
- void


Constant delta movement With angle `u` and `v`




