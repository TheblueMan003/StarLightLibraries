## lazy function sum
### Arguments:
- selector (`entity`)
- score (`string`)
### Return:
- int


Sum up the value of the scoreboard of the entity in e

## lazy function min
### Arguments:
- selector (`entity`)
- score (`string`)
### Return:
- int


Get the min value of the scoreboard of the entity in e

## lazy function max
### Arguments:
- selector (`entity`)
- score (`string`)
### Return:
- int


Get the max value of the scoreboard of the entity in e

## lazy function avg
### Arguments:
- selector (`entity`)
- score (`string`)
### Return:
- int


Get the average value of the scoreboard of the entity in e

## lazy function winner
### Arguments:
- selector (`entity`)
- score (`int`)
### Return:
- entity


Return the entities within `selector` that has the biggest `score`

## lazy function withWinner
### Arguments:
- selector (`entity`)
- score (`int`)
- action (`void=>void`)
### Return:
- void


Execute `action` on the entity within `selector` that has the biggest `score`

## lazy function loser
### Arguments:
- selector (`entity`)
- score (`int`)
### Return:
- void


Return the entities within `selector` that has the smallest `score`

## lazy function withLoser
### Arguments:
- selector (`entity`)
- score (`int`)
- action (`void=>void`)
### Return:
- void


Execute `action` on the entity within `selector` that has the smallest `score`

## lazy function forEachOrderedAscending
### Arguments:
- selector (`entity`)
- score (`int`)
- action (`void=>void`)
### Return:
- void


Execute `action` on all entities within `selector` ordered by ascending `score`

## lazy function forEachOrderedDescending
### Arguments:
- selector (`entity`)
- score (`int`)
- action (`void=>void`)
### Return:
- void


Execute `action` on all entities within `selector` ordered by descending `score`

## lazy function forEachOrdered
### Arguments:
- selector (`entity`)
- score (`int`)
- ascending (`bool`)
- action (`void=>void`)
### Return:
- void


Execute `action` on all entities within `selector` ordered `score`

## lazy function onNewHighScore
### Arguments:
- selector (`entity`)
- score (`int`)
- previous (`int`)
- action (`void=>void`)
### Return:
- void


Execute `action` on the entity that has the new highest `score` within `selector`

## lazy function onNewLowScore
### Arguments:
- selector (`entity`)
- score (`int`)
- previous (`int`)
- action (`void=>void`)
### Return:
- void


Execute `action` on the entity that has the new lowest `score` within `selector`


