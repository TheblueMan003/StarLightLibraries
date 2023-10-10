package standard.float

import math

lazy float minValue = -2147483.648
lazy float maxValue = 2147483.647

lazy float pow(float x, float y){
    return math.pow(x, y)
}

"""
Convert string to int, ignore any non-digit characters.
"""
float parse(string s){
    float i = 0
    int sign = 1
    if(s[0] == "-"){
        sign = -1
        s = s[1..]
    }
    while(s != "" && s[0] != "."){
        i *= 10
        switch(s[0] for k in 0..9){
            ""+k -> i += k
        }
        s = s[1..]
    }
    if(s != ""){
        float j = 0
        int k = 1
        while(s != ""){
            switch(s[0] for l in 0..9){
                ""+l -> j = l / k
            }
            k *= 10
            s = s[1..]
        }
        i += j
    }
    return i * sign
}