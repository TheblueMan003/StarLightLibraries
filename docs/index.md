# StarLight Libraries
This is the main repository for StarLight Libraries. For the compiler check: https://github.com/TheblueMan003/StarLight

## How to use
Libraries are downloaded automatically when you compile your code. You can also download them manually and put them in the `libraries` folder or by using the install command from the compiler.

## How to contribute
You can contribute by making a pull request. If you want to add a library, make sure it is in the right format. You can check the `src` folder for examples.

Your library should be inside the src folder. When you are done run the submit.py script and give the name of your libraries from the src folder. Then make a pull request and wait for it to be accepted.

To update your libraries update the files in the src folder and run the submit.py script again. Then make a pull request and wait for it to be accepted.

- git add *
- git commit -am "message"
- git pull

- python submit.py
- \>\> name of library
- \>\> version of library

- git add *
- git commit -am "message"
- git push
# List of Libraries

- **animation**
	- [AsyncCutscene](libraries/animation/AsyncCutscene.md)
	- [Cutscene](libraries/animation/Cutscene.md)
	- [actionbar](libraries/animation/actionbar.md)
	- [bossbar](libraries/animation/bossbar.md)
	- [title](libraries/animation/title.md)
	- [utils](libraries/animation/utils.md)

- **cmd**
	- **bedrock**
		- [dialog](libraries/cmd/bedrock/dialog.md)
		- [tickingarea](libraries/cmd/bedrock/tickingarea.md)

	- **java**
		- [data](libraries/cmd/java/data.md)
		- [forceload](libraries/cmd/java/forceload.md)
	- [actionbar](libraries/cmd/actionbar.md)
	- [bossbar](libraries/cmd/bossbar.md)
	- [difficulty](libraries/cmd/difficulty.md)
	- [entity](libraries/cmd/entity.md)
	- [gamerule](libraries/cmd/gamerule.md)
	- [schedule](libraries/cmd/schedule.md)
	- [score](libraries/cmd/score.md)
	- [sound](libraries/cmd/sound.md)
	- [spawnpoint](libraries/cmd/spawnpoint.md)
	- [structure](libraries/cmd/structure.md)
	- [tag](libraries/cmd/tag.md)
	- [team](libraries/cmd/team.md)
	- [time](libraries/cmd/time.md)
	- [title](libraries/cmd/title.md)
	- [tp](libraries/cmd/tp.md)
	- [worldborder](libraries/cmd/worldborder.md)
	- [xp](libraries/cmd/xp.md)
	- [damage](libraries/cmd/damage.md)
	- [inputpermission](libraries/cmd/inputpermission.md)
	- [camera](libraries/cmd/camera.md)
	- [spectate](libraries/cmd/spectate.md)
	- [block](libraries/cmd/block.md)
	- [effect](libraries/cmd/effect.md)
	- [gamemode](libraries/cmd/gamemode.md)
	- [particles](libraries/cmd/particles.md)

- **game**
	- **parkour**
		- [snake](libraries/game/parkour/snake.md)
		- [spawnpoint](libraries/game/parkour/spawnpoint.md)
		- [flag_checkpoint](libraries/game/parkour/flag_checkpoint.md)
		- [manager](libraries/game/parkour/manager.md)
	- [Countdown](libraries/game/Countdown.md)
	- [Region](libraries/game/Region.md)
	- [Room](libraries/game/Room.md)
	- [TimeSplit](libraries/game/TimeSplit.md)
	- [Timer](libraries/game/Timer.md)
	- [music](libraries/game/music.md)
	- [Level](libraries/game/Level.md)
	- [AreaLevel](libraries/game/AreaLevel.md)
	- [ring](libraries/game/ring.md)
	- [elytra](libraries/game/elytra.md)
	- [TeamManager](libraries/game/TeamManager.md)
	- [Language](libraries/game/Language.md)
	- [score](libraries/game/score.md)
	- [WallRaycast](libraries/game/WallRaycast.md)

- **maps**
	- **theblueman003**
		- [screen](libraries/maps/theblueman003/screen.md)
		- [textbox](libraries/maps/theblueman003/textbox.md)

- **math**
	- [Vector2](libraries/math/Vector2.md)
	- [Vector2Int](libraries/math/Vector2Int.md)
	- [Vector3](libraries/math/Vector3.md)
	- [Vector3Int](libraries/math/Vector3Int.md)
	- [raycast](libraries/math/raycast.md)
	- [time](libraries/math/time.md)
	- [reflection](libraries/math/reflection.md)

- **mc**
	- **bedrock**
		- **resourcespack**
			- [textures](libraries/mc/bedrock/resourcespack/textures.md)
		- [Block](libraries/mc/bedrock/Block.md)
		- [Entity](libraries/mc/bedrock/Entity.md)
		- [Item](libraries/mc/bedrock/Item.md)

	- **inventory**
		- [Setup](libraries/mc/inventory/Setup.md)

	- **java**
		- **display**
			- [DisplayBlock](libraries/mc/java/display/DisplayBlock.md)
			- [DisplayEntity](libraries/mc/java/display/DisplayEntity.md)
			- [DisplayItem](libraries/mc/java/display/DisplayItem.md)
			- [DisplayText](libraries/mc/java/display/DisplayText.md)

		- **resourcespack**
			- [font](libraries/mc/java/resourcespack/font.md)
			- [models](libraries/mc/java/resourcespack/models.md)
		- [armor_stand](libraries/mc/java/armor_stand.md)
		- [event](libraries/mc/java/event.md)
		- [explosion](libraries/mc/java/explosion.md)
		- [firework](libraries/mc/java/firework.md)
		- [input](libraries/mc/java/input.md)
		- [nbt](libraries/mc/java/nbt.md)
		- [shader](libraries/mc/java/shader.md)
		- [villager](libraries/mc/java/villager.md)
		- [world](libraries/mc/java/world.md)
		- [item](libraries/mc/java/item.md)

	- **resourcespack**
		- [sound](libraries/mc/resourcespack/sound.md)
	- [inventory](libraries/mc/inventory.md)
	- [player](libraries/mc/player.md)
	- [pointer](libraries/mc/pointer.md)
	- [blocktags](libraries/mc/blocktags.md)
	- [effect_blocks](libraries/mc/effect_blocks.md)
	- [click](libraries/mc/click.md)
	- [positionlock](libraries/mc/positionlock.md)
	- [Entity](libraries/mc/Entity.md)
	- [hotbarmenu](libraries/mc/hotbarmenu.md)
	- [sprite](libraries/mc/sprite.md)
	- [AnimatedEntity](libraries/mc/AnimatedEntity.md)

- **random**
	- [LCG](libraries/random/LCG.md)
	- [perlin](libraries/random/perlin.md)

- **standard**
	- **collections**
		- [arraylist](libraries/standard/collections/arraylist.md)
		- [linkedlist](libraries/standard/collections/linkedlist.md)
		- [queue](libraries/standard/collections/queue.md)
		- [stack](libraries/standard/collections/stack.md)
		- [dictionnary](libraries/standard/collections/dictionnary.md)
		- [list](libraries/standard/collections/list.md)
	- [Exception](libraries/standard/Exception.md)
	- [array](libraries/standard/array.md)
	- [debug](libraries/standard/debug.md)
	- [float](libraries/standard/float.md)
	- [int](libraries/standard/int.md)
	- [long](libraries/standard/long.md)
	- [bint](libraries/standard/bint.md)
	- [Color](libraries/standard/Color.md)

- **utils**
	- [CProcess](libraries/utils/CProcess.md)
	- [Process](libraries/utils/Process.md)
	- [process_manager](libraries/utils/process_manager.md)
	- [world](libraries/utils/world.md)
	- [GlobalClock](libraries/utils/GlobalClock.md)
	- [draw](libraries/utils/draw.md)
	- [Event](libraries/utils/Event.md)
	- [PProcess](libraries/utils/PProcess.md)
	- [nbt](libraries/utils/nbt.md)
	- [blocktags](libraries/utils/blocktags.md)
	- [shape](libraries/utils/shape.md)
- [game](libraries/game.md)
- [math](libraries/math.md)
- [random](libraries/random.md)
- [standard](libraries/standard.md)
- [utils](libraries/utils.md)
- [test](libraries/test.md)
- [cmd](libraries/cmd.md)

