package random.LCG

import math

"""
Struct for Linear Congruent Generator
Use the value from glibc (https://en.wikipedia.org/wiki/Glibc)
"""
struct LCG{
    int s
    """
    Constructor
    """
    def lazy __init__(int init_seed = 0){
        this.s = init_seed
    }

    """
    Return a new random number
    """
    int next(){
        s *= 1103515245
        s += 12345
        return s
    }

    """
    Return a new random number
    """
    int nextInt(){
        s *= 1103515245
        s += 12345
        return s
    }

    """
    Return a new random number between min and max
    """
    int range(int min, int max){
        int n = next()
        n -= min
        n %= (max-min)
        n += min
        return n
    }

    """
    Return a new random float number
    """
    float nextFloat(){
        s *= 1103515245
        s += 12345
        float t
        t = s
        return t
    }

    """
    Return the current seed
    """
    int seed(){
        return s
    }

    """
    Return a new random number from a Gaussian distribution with mean and standard deviation
    """
    float nextGaussian(float mean = 0.0, float std = 1.0) {
        float u1 = nextFloat()
        float u2 = nextFloat()

        float z0 = math.sqrt(-2.0 * math.log(u1)) * math.cos(2.0 * math.pi * u2)
        return mean + std * z0
    }
}

package _
random.LCG.LCG lcg = new random.LCG.LCG(0)