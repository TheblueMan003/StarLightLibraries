## lazy [noReturnCheck=true,requiresVariable=true] function summon
### Arguments:
- name (`mcobject`)
- data (`json`)
- fct (`void=>void`)
### Return:
- entity




## lazy [noReturnCheck=true,requiresVariable=true] function summon
### Arguments:
- name (`mcobject`)
- data (`json`)
### Return:
- entity




## lazy [noReturnCheck=true] function summon
### Arguments:
- name (`mcobject`)
- fct (`void=>void`)
### Return:
- entity




## lazy [noReturnCheck=true,requiresVariable=true] function summon
### Arguments:
- name (`mcobject`)
- skin (`string`)
- fct (`void=>void`)
### Return:
- entity




## lazy [noReturnCheck=true,requiresVariable=true] function summon
### Arguments:
- name (`mcobject`)
- fct (`void=>void`)
### Return:
- entity




## lazy [noReturnCheck=true,requiresVariable=true] function summon
### Arguments:
- name (`mcobject`)
- skin (`string`)
### Return:
- entity




## lazy [noReturnCheck=true,requiresVariable=true] function summon
### Arguments:
- name (`mcobject`)
### Return:
- entity




## lazy function kill
### Arguments:
- selector (`entity`)
### Return:
- void




## lazy function despawn
### Arguments:
- e (`entity`)
### Return:
- void




## lazy function swap
### Arguments:
- $a (`entity`)
- $b (`entity`)
### Return:
- void


Swap the position of the entity $a and $b

## predicate onFire


## predicate isSneaking


## predicate isSprinting


## predicate isSwimming


## predicate isBaby


## lazy function onGround
### Arguments:

### Return:
- bool


Return true if the entity is on the ground

## function onGround
### Arguments:

### Return:
- bool


Return true if the entity is on the ground

## predicate overworld


## predicate the_end


## predicate nether


## predicate dimension


## lazy function angerAngaist
### Arguments:
- $e (`entity`)
### Return:
- void


Anger the entity @s against e

## lazy function angerAngaist
### Arguments:
- e1 (`entity`)
- e2 (`entity`)
### Return:
- void


Anger the entity e1 against e2

## lazy function count
### Arguments:
- e (`entity`)
### Return:
- int


Count the number of entity in e

## lazy function count
### Arguments:
- e (`entity`)
- p (`bool`)
### Return:
- int


Count the number of entity in e that match the predicate

## lazy function count
### Arguments:
- e (`entity`)
- p (`void=>bool`)
### Return:
- int


Count the number of entity in e that match the predicate

## lazy function ride
### Arguments:
- e (`entity`)
### Return:
- void


Mount the current entity on the entity e

## lazy function ride
### Arguments:
- e1 (`entity`)
- e2 (`entity`)
### Return:
- void


Mount the entity e1 on the entity e2

## lazy function dismount
### Arguments:

### Return:
- void


Dismount the current entity

## lazy function dismount
### Arguments:
- e (`entity`)
### Return:
- void


Dismount the entity e

## lazy function spectate
### Arguments:
- e (`entity`)
### Return:
- void


Spectate the current entity on the entity e

## lazy function spectate
### Arguments:
- e1 (`entity`)
- e2 (`entity`)
### Return:
- void


Spectate the entity e1 on the entity e2

## lazy function exists
### Arguments:
- e (`entity`)
- test (`bool`)
### Return:
- bool


Return true if at least one entity in e has the scoreboard in score

## lazy function forall
### Arguments:
- e (`entity`)
- test (`bool`)
### Return:
- bool


Return true if all entity in e has the scoreboard in score

## lazy function event
### Arguments:
- $event (`string`)
### Return:
- void




## lazy function event
### Arguments:
- selector (`entity`)
- $event (`string`)
### Return:
- void





