# template TeamManager<>


## lazy function start
### Arguments:
- plys (`entity`)
### Return:
- void


Try to make team

## [compile.order=9999] function start
### Arguments:

### Return:
- void




## function reset
### Arguments:

### Return:
- void




## lazy function requireProbabilityTeam
### Arguments:
- count (`int`)
- fct (`void=>void`)
### Return:
- void


Add a team that require a exact number of player to be made. Players are selected randomly with a bias for the one that have been in the team the least.

## lazy function requireRotatingTeam
### Arguments:
- count (`int`)
- fct (`void=>void`)
### Return:
- void


Add a rotating team: A team that will try to take player that have the least been in it.

## lazy function requireTeam
### Arguments:
- count (`int`)
- fct (`void=>void`)
### Return:
- void


Add a team that require a exact number of player to be made.

## lazy function requireTeam
### Arguments:
- min (`int`)
- max (`int`)
- fct (`void=>void`)
### Return:
- void


Add a team that require a minimum and maximum of player to be made.

## lazy function possibleTeam
### Arguments:
- max (`int`)
- fct (`void=>void`)
### Return:
- void


Add a buffer team that only have a maximum of player to be made.




