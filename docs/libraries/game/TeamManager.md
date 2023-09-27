# template TeamManager<>


## ` lazy void start(entity plys)`
Try to make team

## ` [compile.order=9999] void start()`


## ` void reset()`


## ` lazy void requireProbabilityTeam(int count, void=>void fct)`
Add a team that require a exact number of player to be made. Players are selected randomly with a bias for the one that have been in the team the least.

## ` lazy void requireRotatingTeam(int count, void=>void fct)`
Add a rotating team: A team that will try to take player that have the least been in it.

## ` lazy void requireTeam(int count, void=>void fct)`
Add a team that require a exact number of player to be made.

## ` lazy void requireTeam(int min, int max, void=>void fct)`
Add a team that require a minimum and maximum of player to be made.

## ` lazy void possibleTeam(int max, void=>void fct)`
Add a buffer team that only have a maximum of player to be made.




