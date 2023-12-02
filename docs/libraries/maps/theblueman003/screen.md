## lazy function addButtonModels
### Arguments:
- $name (`string`)
### Return:
- void




## lazy function addCharacterButtonModels
### Arguments:
- $name (`string`)
### Return:
- void




## lazy function addMapsButtonModels
### Arguments:
- $name (`string`)
### Return:
- void




## lazy function addScreenModels
### Arguments:
- $name (`string`)
### Return:
- void




# class ButtonEntity


## function __init__
### Arguments:

### Return:
- void




## lazy function select
### Arguments:
- index (`int`)
### Return:
- void




## lazy function unselect
### Arguments:
- index (`int`)
### Return:
- void




## lazy function click
### Arguments:
- index (`int`)
### Return:
- void




## lazy function disable
### Arguments:
- index (`int`)
### Return:
- void




## function __destroy__
### Arguments:

### Return:
- void






# class ScreenEntity


## function __init__
### Arguments:

### Return:
- void




## lazy function setScreen
### Arguments:
- count (`int`)
### Return:
- void




## function __destroy__
### Arguments:

### Return:
- void






## lazy [__returnCheck__=true] function makeCharacterDoll
### Arguments:
- name (`string`)
### Return:
- int




## lazy [__returnCheck__=true] function makeMapsButton
### Arguments:
- name (`string`)
### Return:
- int




## @screen.home function ~
### Arguments:

### Return:
- void




## @screen.times function ~
### Arguments:

### Return:
- void




## @screen.info function ~
### Arguments:

### Return:
- void




## @screen.clear function ~
### Arguments:

### Return:
- void




# class InfoDisplay


## lazy function __init__
### Arguments:
- text (`rawjson`)
### Return:
- void






## lazy function setInfo
### Arguments:
- text (`rawjson`)
### Return:
- void




## public lazy function addCredit
### Arguments:
- credit_count (`int`)
- name (`string`)
- fct (`void=>void`)
### Return:
- void


Add a character button to the screen

## public lazy function addMap
### Arguments:
- index (`int`)
- name (`string`)
- fct (`void=>void`)
### Return:
- void


Add a map button to the screen

## public lazy function summon
### Arguments:
- button1 (`int`)
- button2 (`int`)
- button3 (`int`)
- button4 (`int`)
### Return:
- void




## function start
### Arguments:

### Return:
- void




## public @screen.start [tag.order=-1] function stop
### Arguments:

### Return:
- void




## lazy function onStart
### Arguments:
- fct (`void=>void`)
### Return:
- void




# class EnumButton


## lazy function __init__
### Arguments:
- text (`rawjson`)
### Return:
- void






## lazy function addSettingEnum
### Arguments:
- choise (`json`)
- callBack (`int=>void`)
### Return:
- void




## lazy function addSettingInt
### Arguments:
- text (`string`)
- min (`int`)
- max (`int`)
- callBack (`int=>void`)
### Return:
- void




## lazy function addSettingBoolean
### Arguments:
- text (`string`)
- callBack (`bool=>void`)
### Return:
- void





