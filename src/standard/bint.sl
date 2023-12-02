package standard.bint

struct bint{
    int value
    int bound

    def __init__(int bound){
        this.bound = bound
    }
    def __init__(int value, int bound){
        this.value = value
        this.bound = bound
    }

    def lazy __add__(bint other){
        value += other.value
        value %= bound
    }
    def lazy __sub__(bint other){
        value -= other.value
        value %= bound
    }
    def lazy __mul__(bint other){
        value *= other.value
        value %= bound
    }
    def lazy __div__(bint other){
        value /= other.value
        value %= bound
    }
    def lazy __mod__(bint other){
        value /= other.value
        value %= bound
    }
    lazy bool __lt__(bint other){
        return value < other.value
    }
    lazy bool __gt__(bint other){
        return value > other.value
    }
    lazy bool __le__(bint other){
        return value <= other.value
    }
    lazy bool __ge__(bint other){
        return value >= other.value
    }
    lazy bool __eq__(bint other){
        return value == other.value
    }
    lazy bool __ne__(bint other){
        return value != other.value
    }



    def lazy __add__(int other){
        value += other
        value %= bound
    }
    def lazy __sub__(int other){
        value -= other
        value %= bound
    }
    def lazy __mul__(int other){
        value *= other
        value %= bound
    }
    def lazy __div__(int other){
        value /= other
        value %= bound
    }
    def lazy __mod__(int other){
        value /= other
        value %= bound
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
        value %= bound
    }
    lazy void __set__(json other){
        value = other
        value %= bound
    }
}