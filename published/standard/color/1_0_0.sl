package standard.Color

struct Color{
    int value

    def lazy __init__(int value){
        this.value = value
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

    lazy void setRed(int red){
        value = value % 65536 + (red << 16)
    }
    lazy void setGreen(int green){
        value = value - getGreen() + (green << 8)
    }
    lazy void setBlue(int blue){
        value = value - getBlue() + blue
    }

    lazy void setRGB(int red, int green, int blue){
        value = (red << 16) + (green << 8) + blue
    }
}