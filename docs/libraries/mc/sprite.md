## lazy function addTexture
### Arguments:
- name (`string`)
### Return:
- Texture?


Add a texture to the sprite list and return the texture id

## lazy function addTextureVertical
### Arguments:
- name (`string`)
### Return:
- Texture?




## lazy function addAnimation
### Arguments:
- sprites (`json`)
- frame_time (`int`)
- loop (`bool`)
- callback (`void=>void`)
### Return:
- Animation?




## lazy function addAnimationFromStrip
### Arguments:
- sprite (`string`)
- count (`int`)
- frame_time (`int`)
- loop (`bool`)
- callback (`void=>void`)
### Return:
- Animation?




# class Sprite


## public @sprite.tick [compile.order=999999,__returnCheck__=true] function main
### Arguments:

### Return:
- void




## public function setAnimation
### Arguments:
- anim (`Animation?`)
### Return:
- void




## public lazy function setTexture
### Arguments:
- index (`int`)
### Return:
- void




## public function getTexture
### Arguments:

### Return:
- int




## public lazy function setSize
### Arguments:
- scale (`float`)
### Return:
- void






# class Particle


## lazy function __init__
### Arguments:
- animation (`Animation?`)
- motion (`Vector3?`)
- acceleration (`Vector3?`)
### Return:
- void




## lazy function __init__
### Arguments:
- animation (`Animation?`)
- motion (`(float,float,float)`)
- acceleration (`(float,float,float)`)
### Return:
- void




## lazy function __init__
### Arguments:
- animation (`Animation?`)
- mx (`float`)
- my (`float`)
- mz (`float`)
- ax (`float`)
- ay (`float`)
- az (`float`)
### Return:
- void




## public virtual function getMaxAge
### Arguments:

### Return:
- int




## public @sprite.tick function main2
### Arguments:

### Return:
- void






## function start
### Arguments:

### Return:
- void




## function stop
### Arguments:

### Return:
- void





