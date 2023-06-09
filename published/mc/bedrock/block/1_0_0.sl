package mc.bedrock.Block

import mc.bedrock.resourcespack.textures as textures

private lazy var _blocks = {"format_version": "1.19.50"}

[compile.order=99999] private void make(){
    [bedrock_rp=true] jsonfile blocks _blocks
}

template Block{
    private lazy var _name = Compiler.getContextName()
    private lazy var _namespace = "sl"
    private lazy var _components = {}
    private lazy var _description = {}
    private lazy var _properties = {}
    private lazy var _events = {}
    private lazy var _permutations = []
    private lazy var _texturesSingle = ""
    private lazy var _texturesJson = []
    private lazy var _texturesMod = 0
    private lazy var _hasGeometry = false
    private lazy var _renderMethod = "opaque"

    private lazy var _sound = "stone"

    """
    Set the name of the block
    """
    def lazy setName(string name){
        _name = name
    }

    """
    Set the namespace of the block
    """
    def lazy setNamespace(string namespace){
        _namespace = namespace
    }

    """
    Set Display Name of the block
    """
    def lazy setDisplayName(string name){
        _components += {"minecraft:display_name": name}
    }

    """
    Set the register to creative menu
    """
    def lazy setCategory(string value){
        _description += {"menu_category": {"category":value}}
    }

    """
    Set the register to creative menu
    """
    def lazy setCategory(string value, string group){
        _description += {"menu_category": {"category":value, "group":group}}
    }


    """
    Add a component to the block
    """
    def lazy addComponent(string component){
        _components += component
    }

    """
    Set the block to be unwalkable
    """
    def lazy setUnwalkable(bool value = true){
        _components += {"minecraft:unwalkable": value}
    }

    """
    Set the block destroy time
    """
    def lazy setDestroyTime(float time){
        _components += {"minecraft:destructible_by_mining": {"seconds_to_destroy": time}}
    }

    """
    Set the block friction
    """
    def lazy setFriction(float friction){
        _components += {"minecraft:friction": friction}
    }

    """
    Set the block map color
    """
    def lazy setMapColor(string color){
        _components += {"minecraft:map_color": color}
    }

    """
    Set the block map color
    """
    def lazy setMapColor(int r, int g, int b){
        _components += {"minecraft:map_color": [r, g, b]}
    }

    """
    Set the block flammability
    """
    def lazy setFlammable(int flame_odds, int burn_odds){
        _components += {"minecraft:flammable": {"flame_odds": flame_odds, "burn_odds": burn_odds}}
    }

    """
    Set the block light emission
    """
    def lazy setBlockLightEmission(float light){
        _components += {"minecraft:light_emission": light}
    }

    """
    Set the block light absorption
    """
    def lazy setBlockLightAbsorption(int light){
        _components += {"minecraft:light_dampening": light}
    }

    """
    Set the block entity collision
    """
    def lazy setCollisionBox(float x, float y, float z, float size_x, float size_y, float size_z){
        _components += {"minecraft:collision_box": {"origin": [x, y, z], "size": [size_x, size_y, size_z]}}
    }

    """
    Set the block pick collision
    """
    def lazy setSelectionBox(float x, float y, float z, float size_x, float size_y, float size_z){
        _components += {"minecraft:selection_box": {"origin": [x, y, z], "size": [size_x, size_y, size_z]}}
    }

    """
    Set the block geometry
    """
    def lazy setGeometry(string geometry){
        _components += {"minecraft:geometry": geometry}
        _hasGeometry = true
    }

    """
    Set the render Method to alpha
    """
    def lazy setTransparent(){
        _renderMethod = "alpha_test"
    }

    """
    Set the render Method to alpha
    """
    def lazy setBlend(){
        _renderMethod = "blend"
    }


    """
    Set the render Method to be opaque
    """
    def lazy setOpaque(){
        _renderMethod = "opaque"
    }

    """
    Set blast resistance
    """
    def lazy setBlastResistance(int resistance){
        _components += {"minecraft:destructible_by_explosion": {"explosion_resistance": resistance}}
    }

    """
    Add a property to the block
    """
    def lazy addProperty(string name, json values){
        Compiler.insert($name, name){
            _properties += {"$name": values}
        }
    }

    """
    Add a permutation to the block
    """
    def lazy addPermutation(string condition, void=>void fct){
        // Copy all states
        lazy val components = _components
        _components = {}
        fct()
        lazy val permutation = _components
        _components = components
        _permutations += {"condition": condition, "components": permutation}
    }

    """
    Add a permutation to the block for a specific property
    """
    def lazy addPermutation(string property, string value, void=>void fct){
        lazy val prop = Compiler.stringify(property)
        lazy val valu = Compiler.stringify(value)
        Compiler.insert($prop, prop){
            Compiler.insert($valu, valu){
                addPermutation("query.block_property($prop) == $valu", fct)
            }
        }
    }
    

    """
    Set texture
    """
    def lazy setTexture(string texture){
        _texturesSingle = texture
        _texturesMod = 1
    }

    """
    Set texture
    """
    def lazy setTexture(string up, string side, string down){
        _texturesJson = [up, side, down]
        _texturesMod = 2
    }

    """
    Set texture
    """
    def lazy setTexture(string name, json data){
        _texturesJson = data
        _texturesMod = 3
    }

    """
    Set texture
    """
    def lazy addRandomTexture(string texture, int weight){
        lazy var path = "textures/"+texture
        _texturesJson += {"path": path,"weight": weight}
        _texturesMod = 3
    }


    """
    Set sound
    """
    def lazy setSound(string sound){
        _sound = sound
    }


    def lazy setRotatable(){
        _components += {
            "minecraft:on_player_placing": {
				"event": "update_rotation"
			}
        }
        _events += {
			"update_rotation": {
				"set_block_property": {
					"block:rotation": "query.cardinal_facing_2d"
				}
			}
		}
        _properties += {"block:rotation": [0,1,2,3,4,5,6]}
        _permutations += [
			{
				"condition": "query.block_property('block:rotation') == 2",
				"components": {
					"minecraft:transformation": {"rotation": [
						0,
						0,
						0
					]}
				}
			},
			{
				"condition": "query.block_property('block:rotation') == 3",
				"components": {
					"minecraft:transformation": {"rotation": [
						0,
						-180,
						0
					]}
				}
			},
			{
				"condition": "query.block_property('block:rotation') == 4",
				"components": {
					"minecraft:transformation": {"rotation": [
						0,
						90,
						0
					]}
				}
			},
			{
				"condition": "query.block_property('block:rotation') == 5",
				"components": {
					"minecraft:transformation": {"rotation": [
						0,
						-90,
						0
					]}
				}
			}
		]
    }



    def [compile.order=9999] private make(){
        if (Compiler.isBedrock()){
            lazy val fullName = _namespace + ":" + _name
            _description += {"identifier": fullName}
            _description += {"properties": _properties}

            lazy var textureName = ""
            if (_texturesMod == 1){
                textureName = _texturesSingle
                textures.addBlock(_texturesSingle)
                if (!_hasGeometry){
                    Compiler.insert($fullName, fullName){
                        _blocks += {"$fullName": {"textures": _texturesSingle, "sounds": _sound}}
                    }
                }
            } 
            else if (_texturesMod == 2){
                textureName = fullName
                foreach(texture in _texturesJson){
                    textures.addBlock(texture)
                }
                lazy val up = _texturesJson[0]
                lazy val side = _texturesJson[1]
                lazy val down = _texturesJson[2]
                if (!_hasGeometry){
                    Compiler.insert($fullName, fullName){
                        _blocks += {"$fullName": {"textures": {"up": up, "side": side, "down": down}, "sounds": _sound}}
                    }
                }
            }
            else if (_texturesMod == 3){
                textureName = "sl.block."+_name
                textures.addBlockRandom(textureName, _texturesJson)
                if (!_hasGeometry){
                    Compiler.insert($fullName, fullName){
                        _blocks += {"$fullName": {"textures": textureName, "sounds": _sound}}
                    }
                }
            }
            if (_hasGeometry){
                _components += {
                        "minecraft:material_instances": {
                        "*": {
                            "texture": textureName,
                            "render_method": _renderMethod
                        }
                    }
                }
            }

            Compiler.insert($name, _name){
                jsonfile blocks.$name{
                    "format_version": "1.20.0",
                    "minecraft:block": {
                        "description": _description,
                        "components": _components,
                        "permutations": _permutations,
                        "events": _events
                    }
                }
            }
        }
    }
}
