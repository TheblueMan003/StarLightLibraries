## ` lazy Texture? addTexture(string name)`
Add a texture to the sprite list and return the texture id

## ` lazy Texture? addTextureVertical(string name)`


## ` lazy Animation? addAnimation(json sprites, int frame_time, bool loop, void=>void callback)`


## ` lazy Animation? addAnimationFromStrip(string sprite, int count, int frame_time, bool loop, void=>void callback)`


# class Sprite


## `public @sprite.tick [compile.order=999999,__returnCheck__=true] void main()`


## `public void setAnimation(Animation? anim)`


## `public lazy void setTexture(int index)`


## `public int getTexture()`


## `public lazy void setSize(float scale)`




# class Particle


## ` lazy void __init__(Animation? animation, Vector3? motion, Vector3? acceleration)`


## ` lazy void __init__(Animation? animation, (float,float,float) motion, (float,float,float) acceleration)`


## ` lazy void __init__(Animation? animation, float mx, float my, float mz, float ax, float ay, float az)`


## `public virtual int getMaxAge()`


## `public @sprite.tick void main2()`




## ` void start()`


## ` void stop()`



