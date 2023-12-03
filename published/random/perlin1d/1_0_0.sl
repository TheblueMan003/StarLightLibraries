package random.Perlin1D

import standard.collections.List
import random
import math
import standard

struct Perlin1D{
    List<float> values
    int size

    def this(int size = 256){
        this.size = size
        values = new List<float>()
        for(int i = 0; i < size; i++){
            values.add(random.range(0.0, 1.0))
        }
    }
    float getP(int x){
        int index = x % size
        return values[index]
    }
    float get(float x){
        int x0 = math.floor(x)
        int x1 = x0 + 1
        float t = x - x0
        float v0 = getP(x0)
        float v1 = getP(x1)
        return v0*(1-t) + v1*t
    }
}