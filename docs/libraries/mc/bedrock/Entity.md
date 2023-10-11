# template Entity<>


## [compile.order=999999] function make
### Arguments:

### Return:
- void




## lazy function setNamespace
### Arguments:
- value (`string`)
### Return:
- void


Set the namespace of the entity

## lazy function setMaterial
### Arguments:
- value (`string`)
### Return:
- void


Set the material of the entity

## lazy function setGeometry
### Arguments:
- value (`string`)
### Return:
- void


Set the geometry of the entity

## lazy function setName
### Arguments:
- value (`string`)
### Return:
- void


Set the name of the entity

## lazy function setEggBaseColor
### Arguments:
- value (`string`)
### Return:
- void


Set the egg base color of the entity

## lazy function setEggBaseColor
### Arguments:
- r (`int`)
- g (`int`)
- b (`int`)
### Return:
- void


Set the egg base color of the entity

## lazy function setEggOverlayColor
### Arguments:
- value (`string`)
### Return:
- void


Set the egg overlay color of the entity

## lazy function setEggOverlayColor
### Arguments:
- r (`int`)
- g (`int`)
- b (`int`)
### Return:
- void


Set the egg overlay color of the entity

## lazy function addTexture
### Arguments:
- $name (`string`)
- value (`string`)
### Return:
- void


Add Texture to the entity

## lazy function setIsSpawnable
### Arguments:
- value (`bool`)
### Return:
- void


Set if the entity is spawnable or not

## lazy function setHealth
### Arguments:
- health (`int`)
### Return:
- void


Set the max health and the health of the entity to `health`

## lazy function setCollision
### Arguments:
- width (`float`)
- height (`float`)
### Return:
- void


Set the collision box width and height of the entity

## lazy function setBossBar
### Arguments:
- name (`string`)
- range (`int`)
- darksky (`bool`)
### Return:
- void




## lazy function breakBlocks
### Arguments:
- blocks (`json`)
### Return:
- void




## lazy function breakBlocks
### Arguments:
- blocks (`params`)
### Return:
- void




## lazy function canBreathAir
### Arguments:
- value (`bool`)
### Return:
- void




## lazy function canBreathWater
### Arguments:
- value (`bool`)
### Return:
- void




## lazy function canBreathLava
### Arguments:
- value (`bool`)
### Return:
- void




## lazy function canBreathSolids
### Arguments:
- value (`bool`)
### Return:
- void




## lazy function breathTime
### Arguments:
- inhale (`float`)
- suffocate (`int`)
- supply (`int`)
### Return:
- void




## lazy function generateBubbles
### Arguments:
- value (`bool`)
### Return:
- void




## lazy function burnsInDaylight
### Arguments:

### Return:
- void




## lazy function setInvinsible
### Arguments:

### Return:
- void




## lazy function setTimer
### Arguments:
- time (`float`)
- event (`string`)
- looping (`bool`)
### Return:
- void




## lazy function setTimerRandom
### Arguments:
- start (`float`)
- end (`float`)
- event (`string`)
- looping (`bool`)
### Return:
- void




## lazy function canEquipItem
### Arguments:

### Return:
- void




## lazy function setExplode
### Arguments:
- breakblock (`bool`)
- causesfire (`bool`)
- power (`float`)
- destroygrief (`bool`)
- firegrief (`bool`)
### Return:
- void




## lazy function setExplodeTime
### Arguments:
- breakblock (`bool`)
- causesfire (`bool`)
- power (`float`)
- time (`float`)
- destroygrief (`bool`)
- firegrief (`bool`)
### Return:
- void




## lazy function setInteraction
### Arguments:
- event (`string`)
- text (`string`)
### Return:
- void




## lazy function setInventory
### Arguments:
- size (`string`)
- isprivate (`bool`)
### Return:
- void




## lazy function isNameable
### Arguments:
- alwaysshow (`bool`)
- allowrenaming (`bool`)
### Return:
- void




## lazy function onNamed
### Arguments:
- name (`string`)
- event (`string`)
### Return:
- void




## lazy function setPhysics
### Arguments:
- collision (`bool`)
- gravity (`bool`)
### Return:
- void




## lazy function projectile
### Arguments:
- power (`float`)
- gravity (`float`)
- angle (`float`)
### Return:
- void




## lazy function isPushable
### Arguments:
- pushable (`bool`)
- piston (`bool`)
### Return:
- void




## lazy function setScale
### Arguments:
- scale (`float`)
### Return:
- void




## lazy function shooter
### Arguments:
- shoot (`string`)
### Return:
- void




## lazy function spawnEntity
### Arguments:
- entity (`string`)
- time (`int`)
- quantity (`int`)
- singleuse (`bool`)
### Return:
- void




## lazy function spawnItem
### Arguments:
- item (`string`)
- time (`int`)
- quantity (`int`)
- singleuse (`bool`)
### Return:
- void




## lazy function scale
### Arguments:
- scale (`float`)
### Return:
- void




## lazy function transformation
### Arguments:
- mob (`string`)
- time (`float`)
- keeplevel (`bool`)
- dropinventory (`bool`)
- equipement (`bool`)
### Return:
- void




## lazy function canTeleport
### Arguments:
- maxtime (`int`)
- x (`int`)
- y (`int`)
- z (`int`)
- distance (`int`)
- chance (`float`)
### Return:
- void




## lazy function setAttack
### Arguments:
- attack (`int`)
### Return:
- void




## lazy function entitySensor
### Arguments:
- mob (`string`)
- event (`string`)
- range (`float`)
- quantity (`int`)
### Return:
- void




## lazy function setFamily
### Arguments:
- family (`json`)
### Return:
- void




## lazy function setMovement
### Arguments:
- movement (`float`)
### Return:
- void




## lazy function knockbackResistance
### Arguments:
- value (`float`)
### Return:
- void




## lazy function lookAtPlayer
### Arguments:
- priority (`int`)
- distance (`float`)
- probability (`float`)
### Return:
- void




## lazy function randomLookAround
### Arguments:
- priority (`float`)
### Return:
- void




## lazy function setVariant
### Arguments:
- value (`int`)
### Return:
- void




## lazy function onFatalDamage
### Arguments:
- event (`string`)
### Return:
- void




## lazy function onDamage
### Arguments:
- event (`string`)
### Return:
- void




## lazy function onDamage
### Arguments:
- fct (`void=>void`)
### Return:
- void




## lazy function onFatalDamage
### Arguments:
- fct (`void=>void`)
### Return:
- void




## lazy function mobEffect
### Arguments:
- effect (`string`)
- range (`float`)
- time (`int`)
- mob (`string`)
### Return:
- void




## lazy function randomStroll
### Arguments:
- priority (`int`)
- speed (`float`)
### Return:
- void




## lazy function componentGroup
### Arguments:
- name (`string`)
- fct (`void=>void`)
### Return:
- void




## lazy function addComponentGroup
### Arguments:
- name (`string`)
### Return:
- void




## lazy function removeComponentGroup
### Arguments:
- name (`string`)
### Return:
- void




## lazy function removeEvent
### Arguments:
- name (`string`)
### Return:
- void




## lazy function event
### Arguments:
- name (`string`)
- fct (`void=>void`)
### Return:
- void




## lazy function runCommand
### Arguments:
- fct (`void=>void`)
### Return:
- void







