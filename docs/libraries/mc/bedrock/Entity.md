# template Entity<>


## ` [compile.order=999999] void make()`


## ` lazy void setNamespace(string value)`
Set the namespace of the entity

## ` lazy void setMaterial(string value)`
Set the material of the entity

## ` lazy void setGeometry(string value)`
Set the geometry of the entity

## ` lazy void setName(string value)`
Set the name of the entity

## ` lazy void setEggBaseColor(string value)`
Set the egg base color of the entity

## ` lazy void setEggBaseColor(int r, int g, int b)`
Set the egg base color of the entity

## ` lazy void setEggOverlayColor(string value)`
Set the egg overlay color of the entity

## ` lazy void setEggOverlayColor(int r, int g, int b)`
Set the egg overlay color of the entity

## ` lazy void addTexture(string $name, string value)`
Add Texture to the entity

## ` lazy void setIsSpawnable(bool value)`
Set if the entity is spawnable or not

## ` lazy void setHealth(int health)`
Set the max health and the health of the entity to `health`

## ` lazy void setCollision(float width, float height)`
Set the collision box width and height of the entity

## ` lazy void setBossBar(string name, int range, bool darksky)`


## ` lazy void breakBlocks(json blocks)`


## ` lazy void breakBlocks(params blocks)`


## ` lazy void canBreathAir(bool value)`


## ` lazy void canBreathWater(bool value)`


## ` lazy void canBreathLava(bool value)`


## ` lazy void canBreathSolids(bool value)`


## ` lazy void breathTime(float inhale, int suffocate, int supply)`


## ` lazy void generateBubbles(bool value)`


## ` lazy void burnsInDaylight()`


## ` lazy void setInvinsible()`


## ` lazy void setTimer(float time, string event, bool looping)`


## ` lazy void setTimerRandom(float start, float end, string event, bool looping)`


## ` lazy void canEquipItem()`


## ` lazy void setExplode(bool breakblock, bool causesfire, float power, bool destroygrief, bool firegrief)`


## ` lazy void setExplodeTime(bool breakblock, bool causesfire, float power, float time, bool destroygrief, bool firegrief)`


## ` lazy void setInteraction(string event, string text)`


## ` lazy void setInventory(string size, bool isprivate)`


## ` lazy void isNameable(bool alwaysshow, bool allowrenaming)`


## ` lazy void onNamed(string name, string event)`


## ` lazy void setPhysics(bool collision, bool gravity)`


## ` lazy void projectile(float power, float gravity, float angle)`


## ` lazy void isPushable(bool pushable, bool piston)`


## ` lazy void setScale(float scale)`


## ` lazy void shooter(string shoot)`


## ` lazy void spawnEntity(string entity, int time, int quantity, bool singleuse)`


## ` lazy void spawnItem(string item, int time, int quantity, bool singleuse)`


## ` lazy void scale(float scale)`


## ` lazy void transformation(string mob, float time, bool keeplevel, bool dropinventory, bool equipement)`


## ` lazy void canTeleport(int maxtime, int x, int y, int z, int distance, float chance)`


## ` lazy void setAttack(int attack)`


## ` lazy void entitySensor(string mob, string event, float range, int quantity)`


## ` lazy void setFamily(json family)`


## ` lazy void setMovement(float movement)`


## ` lazy void knockbackResistance(float value)`


## ` lazy void lookAtPlayer(int priority, float distance, float probability)`


## ` lazy void randomLookAround(float priority)`


## ` lazy void setVariant(int value)`


## ` lazy void onFatalDamage(string event)`


## ` lazy void onDamage(string event)`


## ` lazy void onDamage(void=>void fct)`


## ` lazy void onFatalDamage(void=>void fct)`


## ` lazy void mobEffect(string effect, float range, int time, string mob)`


## ` lazy void randomStroll(int priority, float speed)`


## ` lazy void componentGroup(string name, void=>void fct)`


## ` lazy void addComponentGroup(string name)`


## ` lazy void removeComponentGroup(string name)`


## ` lazy void removeEvent(string name)`


## ` lazy void event(string name, void=>void fct)`


## ` lazy void runCommand(void=>void fct)`





