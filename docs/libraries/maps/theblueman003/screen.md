## ` lazy void addButtonModels(string $name)`


## ` lazy void addCharacterButtonModels(string $name)`


## ` lazy void addMapsButtonModels(string $name)`


## ` lazy void addScreenModels(string $name)`


# class ButtonEntity


## ` void __init__()`


## ` lazy void select(int index)`


## ` lazy void unselect(int index)`


## ` lazy void click(int index)`


## ` lazy void disable(int index)`


## ` void __destroy__()`




# class ScreenEntity


## ` void __init__()`


## ` lazy void setScreen(int count)`


## ` void __destroy__()`




## ` lazy [__returnCheck__=true] int makeCharacterDoll(string name)`


## ` lazy [__returnCheck__=true] int makeMapsButton(string name)`


## ` @screen.home void ~()`


## ` @screen.times void ~()`


## ` @screen.info void ~()`


## ` @screen.clear void ~()`


# class InfoDisplay


## ` lazy void __init__(rawjson text)`




## ` lazy void setInfo(rawjson text)`


## `public lazy void addCredit(int credit_count, string name, void=>void fct)`
Add a character button to the screen

## `public lazy void addMap(int index, string name, void=>void fct)`
Add a map button to the screen

## `public lazy void summon(int button1, int button2, int button3, int button4)`


## ` void start()`


## `public @screen.start [tag.order=-1] void stop()`


## ` lazy void onStart(void=>void fct)`


# class EnumButton


## ` lazy void __init__(rawjson text)`




## ` lazy void addSettingEnum(json choise, int=>void callBack)`


## ` lazy void addSettingInt(string text, int min, int max, int=>void callBack)`


## ` lazy void addSettingBoolean(string text, bool=>void callBack)`



