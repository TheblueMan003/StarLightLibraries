
package random.Perlin2D

import standard.collections.List
import random
import math
import standard

struct Perlin2D{
    List<float> values
    int size

    def this(int size = 64){
        this.size = size
        values = new List<float>()

        for(int i = 0; i < size*size; i++){
            values.add(random.range(0.0, 1.0))
        }
    }
    float getP(int x, int y){
        int index = (x%size) + (y%size)*size
        return values[index]
    }
    float get(float x, float y){
        int x0 = math.floor(x)
        int x1 = x0 + 1
        int y0 = math.floor(y)
        int y1 = y0 + 1
        float tx = x - x0
        float ty = y - y0
        float v00 = getP(x0, y0)
        float v01 = getP(x0, y1)
        float v10 = getP(x1, y0)
        float v11 = getP(x1, y1)
        float v0 = v00*(1-tx) + v10*tx
        float v1 = v01*(1-tx) + v11*tx
        return v0*(1-ty) + v1*ty
    }
}