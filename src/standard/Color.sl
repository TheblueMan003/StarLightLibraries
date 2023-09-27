package standard.Color

struct Color{
    int value

    def lazy __init__(int value){
        this.value = value
    }

    def lazy __init__(int red, int green, int blue){
        this.value = (red << 16) + (green << 8) + blue + (1 << 24)
    }

    def lazy __init__(int red, int green, int blue, int alpha){
        this.value = (red << 16) + (green << 8) + blue + (alpha << 24)
    }

    lazy int getRed(){
        return (value >> 16) % 256
    }
    lazy int getGreen(){
        return (value >> 8) % 256
    }
    lazy int getBlue(){
        return value % 256
    }
    lazy int getAlpha(){
        return (value >> 24) % 256
    }

    lazy void setRed(int red){
        value = value % 65536 + (red << 16)
    }
    lazy void setGreen(int green){
        value = value - getGreen() + (green << 8)
    }
    lazy void setBlue(int blue){
        value = value - getBlue() + blue
    }
    lazy void setAlpha(int alpha){
        value = value - getAlpha() + (alpha << 24)
    }

    lazy void setRGB(int red, int green, int blue){
        value = (red << 16) + (green << 8) + blue + (1 << 24)
    }

    lazy void setARGB(int alpha, int red, int green, int blue){
        value = (red << 16) + (green << 8) + blue + (alpha << 24)
    }

    lazy int getRGB(){
        return value % 16777216
    }

    lazy int getARGB(){
        return value
    }
}

Color lerp(Color a, Color b, float value){
    float t = (1 - value)
    return new Color(
        (a.getRed() * t + b.getRed() * value),
        (a.getGreen() * t + b.getGreen() * value),
        (a.getBlue() * t + b.getBlue() * value),
        (a.getAlpha() * t + b.getAlpha() * value)
    )
}
