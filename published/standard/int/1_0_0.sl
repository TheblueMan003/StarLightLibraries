package standard.int

lazy int minValue = -2147483648
lazy int maxValue = 2147483647

"""
Returns a bitwise and with b. Computation is done using modulo 2 arithmetic.
"""
int bitwiseAnd(int a, int b){
    int result = 0
    foreach(i in 0..31){
        lazy int p = Compiler.powInt(2, 31-i)
        if(a >= p && b >= p){
            result += p
        }
        if (a >= p){
            a -= p
        }
        if (b >= p){
            b -= p
        }
    }
    return result
}

"""
Returns a bitwise or with b. Computation is done using modulo 2 arithmetic.
"""
int bitwiseOr(int a, int b){
    int result = 0
    foreach(i in 0..32){
        lazy int p = Compiler.powInt(2, 31-i)
        if(a >= p || b >= p){
            result += p
        }
        if (a >= p){
            a -= p
        }
        if (b >= p){
            b -= p
        }
    }
    return result
}

"""
Returns a bitwise xor with b. Computation is done using modulo 2 arithmetic.
"""
int bitwiseXor(int a, int b){
    int result = 0
    foreach(i in 0..32){
        lazy int p = Compiler.powInt(2, 31-i)
        if((a >= p && b < p) || (a < p && b >= p)){
            result += p
        }
    }
    return result
}

"""
return x^n
"""
int pow(int x, int n, int m = 1){
    if (n == 0){
        return(m)
    }
    else if (n == 1){
        int ret = x * m
        return(ret)
    }
    else{
        if (n % 2 == 1){
            m *= x
            n -= 1
        }
        n /= 2
        x*=x
        return(pow(x, n, m))
    }
}

"""
Returns a shifted to the left by b bits.
"""
int shiftLeft(int a, int b){
    int c = pow(2, b)
    return a * c
}

"""
Returns a shifted to the right by b bits.
"""
int shiftRight(int a, int b){
    int c = pow(2, b)
    return a / c
}

"""
Convert string to int, ignore any non-digit characters.
"""
int parse(string s){
    int i = 0
    int sign = 1
    if(s[0] == "-"){
        sign = -1
        s = s[1..]
    }
    while(s != ""){
        i *= 10
        switch(s[0] for k in 0..9){
            ""+k -> i += k
        }
        s = s[1..]
    }
    return i * sign
}