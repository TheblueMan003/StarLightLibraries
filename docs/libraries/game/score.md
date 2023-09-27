## ` lazy int sum(entity selector, string score)`
Sum up the value of the scoreboard of the entity in e

## ` lazy int min(entity selector, string score)`
Get the min value of the scoreboard of the entity in e

## ` lazy int max(entity selector, string score)`
Get the max value of the scoreboard of the entity in e

## ` lazy int avg(entity selector, string score)`
Get the average value of the scoreboard of the entity in e

## ` lazy entity winner(entity selector, int score)`
Return the entities within `selector` that has the biggest `score`

## ` lazy void withWinner(entity selector, int score, void=>void action)`
Execute `action` on the entity within `selector` that has the biggest `score`

## ` lazy void loser(entity selector, int score)`
Return the entities within `selector` that has the smallest `score`

## ` lazy void withLoser(entity selector, int score, void=>void action)`
Execute `action` on the entity within `selector` that has the smallest `score`

## ` lazy void forEachOrderedAscending(entity selector, int score, void=>void action)`
Execute `action` on all entities within `selector` ordered by ascending `score`

## ` lazy void forEachOrderedDescending(entity selector, int score, void=>void action)`
Execute `action` on all entities within `selector` ordered by descending `score`

## ` lazy void forEachOrdered(entity selector, int score, bool ascending, void=>void action)`
Execute `action` on all entities within `selector` ordered `score`

## ` lazy void onNewHighScore(entity selector, int score, int previous, void=>void action)`
Execute `action` on the entity that has the new highest `score` within `selector`

## ` lazy void onNewLowScore(entity selector, int score, int previous, void=>void action)`
Execute `action` on the entity that has the new lowest `score` within `selector`


