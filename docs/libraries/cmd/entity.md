## ` lazy [noReturnCheck=true,requiresVariable=true] entity summon(mcobject name, json data, void=>void fct)`


## ` lazy [noReturnCheck=true,requiresVariable=true] entity summon(mcobject name, json data)`


## ` lazy [noReturnCheck=true] entity summon(mcobject name, void=>void fct)`


## ` lazy [noReturnCheck=true,requiresVariable=true] entity summon(mcobject name, string skin, void=>void fct)`


## ` lazy [noReturnCheck=true,requiresVariable=true] entity summon(mcobject name, void=>void fct)`


## ` lazy [noReturnCheck=true,requiresVariable=true] entity summon(mcobject name, string skin)`


## ` lazy [noReturnCheck=true,requiresVariable=true] entity summon(mcobject name)`


## ` lazy void kill(entity selector)`


## ` lazy void despawn(entity e)`


## ` lazy void swap(entity $a, entity $b)`
Swap the position of the entity $a and $b

## predicate onFire


## predicate isSneaking


## predicate isSprinting


## predicate isSwimming


## predicate isBaby


## ` lazy bool onGround()`
Return true if the entity is on the ground

## ` bool onGround()`
Return true if the entity is on the ground

## predicate overworld


## predicate the_end


## predicate nether


## predicate dimension


## ` lazy void angerAngaist(entity $e)`
Anger the entity @s against e

## ` lazy void angerAngaist(entity e1, entity e2)`
Anger the entity e1 against e2

## ` lazy int count(entity e)`
Count the number of entity in e

## ` lazy int count(entity e, bool p)`
Count the number of entity in e that match the predicate

## ` lazy int count(entity e, void=>bool p)`
Count the number of entity in e that match the predicate

## ` lazy void ride(entity e)`
Mount the current entity on the entity e

## ` lazy void ride(entity e1, entity e2)`
Mount the entity e1 on the entity e2

## ` lazy void dismount()`
Dismount the current entity

## ` lazy void dismount(entity e)`
Dismount the entity e

## ` lazy void spectate(entity e)`
Spectate the current entity on the entity e

## ` lazy void spectate(entity e1, entity e2)`
Spectate the entity e1 on the entity e2

## ` lazy bool exists(entity e, bool test)`
Return true if at least one entity in e has the scoreboard in score

## ` lazy bool forall(entity e, bool test)`
Return true if all entity in e has the scoreboard in score

## ` lazy void event(string $event)`


## ` lazy void event(entity selector, string $event)`



