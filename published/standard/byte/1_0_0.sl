package standard.byte

struct byte{
    int value

    def lazy __init__(int value){
        this.value = value
    }

    def lazy __add__(byte other){
        value += other.value
        value %= 256
    }
    def lazy __sub__(byte other){
        value -= other.value
        value %= 256
    }
    def lazy __mul__(byte other){
        value *= other.value
        value %= 256
    }
    def lazy __div__(byte other){
        value /= other.value
        value %= 256
    }
    def lazy __mod__(byte other){
        value /= other.value
        value %= 256
    }
    lazy bool __lt__(byte other){
        return value < other.value
    }
    lazy bool __gt__(byte other){
        return value > other.value
    }
    lazy bool __le__(byte other){
        return value <= other.value
    }
    lazy bool __ge__(byte other){
        return value >= other.value
    }
    lazy bool __eq__(byte other){
        return value == other.value
    }
    lazy bool __ne__(byte other){
        return value != other.value
    }



    def lazy __add__(int other){
        value += other
        value %= 256
    }
    def lazy __sub__(int other){
        value -= other
        value %= 256
    }
    def lazy __mul__(int other){
        value *= other
        value %= 256
    }
    def lazy __div__(int other){
        value /= other
        value %= 256
    }
    def lazy __mod__(int other){
        value /= other
        value %= 256
    }
    lazy bool __lt__(int other){
        return value < other
    }
    lazy bool __gt__(int other){
        return value > other
    }
    lazy bool __le__(int other){
        return value <= other
    }
    lazy bool __ge__(int other){
        return value >= other
    }
    lazy bool __eq__(int other){
        return value == other
    }
    lazy bool __ne__(int other){
        return value != other
    }
    lazy void __set__(int other){
        value = other
        value %= 256
    }
    lazy int __cast__(){
        return value
    }
}